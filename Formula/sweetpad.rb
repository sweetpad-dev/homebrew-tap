class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.11"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.11/sweetpad-cli-0.1.11-macos-universal.tar.gz"
  sha256 "f54b1d9daacfd782f5c1dead8d7e1e91a9bcd8d2aeb5d5efa6eab72a947e97fa"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
