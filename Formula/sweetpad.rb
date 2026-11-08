class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.18"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.18/sweetpad-cli-0.1.18-macos-universal.tar.gz"
  sha256 "d8da1f9fda0cdf3f88db1853f998c68cf75ee54a618ed02bc29c4e88d6ada3bc"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
    # The name editors start the debug adapter by when they can't pass it
    # arguments ('sweetpad dap init --editor zed').
    bin.install_symlink "sweetpad" => "sweetpad-dap"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
