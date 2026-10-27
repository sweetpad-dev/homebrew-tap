class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.15"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.15/sweetpad-cli-0.1.15-macos-universal.tar.gz"
  sha256 "79f5da2df7de0a381f675b11f539c1bab056a27b89e3260b6691b48e52c63a41"
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
