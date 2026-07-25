class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.3"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.3/sweetpad-cli-0.1.3-macos-universal.tar.gz"
  sha256 "fff737250e27f5a28bdf946cca89ef027e9a6f5cbeb5cd9e238de9842f4c0fa8"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
