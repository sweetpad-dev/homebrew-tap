class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.2"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.2/sweetpad-cli-0.1.2-macos-universal.tar.gz"
  sha256 "258a9f4c0d35457c6887c4c7e55f4647dcb97b32bda1fee40e75812637a0f2f3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
