class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.0"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.0/sweetpad-cli-0.1.0-macos-universal.tar.gz"
  sha256 "778463bcc33cffc45a17ab2a6bfa5358e7b4ab633abd43a9c23ce907fa1c3704"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
