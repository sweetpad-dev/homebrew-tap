class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.5"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.5/sweetpad-cli-0.1.5-macos-universal.tar.gz"
  sha256 "0b96b52ed1d754f2540cf32a0c20fb5941d2122a06bf38658d20950a46f0b8d9"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
