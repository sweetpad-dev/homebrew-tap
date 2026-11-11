class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.20"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.20/sweetpad-cli-0.1.20-macos-universal.tar.gz"
  sha256 "1ca6b873b93b1372496cbaf5714636b2809d819b5e895e8c67f5da3022e0e2c9"
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
