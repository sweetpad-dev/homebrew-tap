class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.12"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.12/sweetpad-cli-0.1.12-macos-universal.tar.gz"
  sha256 "ffe5f0d186ef63f3812c7540f1c59fd20b1419e89efff8f8583a94f2c3a4c5a2"
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
