class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.7"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.7/sweetpad-cli-0.1.7-macos-universal.tar.gz"
  sha256 "f486b174edaa10fa3014e23d0663512d14b17c41f73b472157cab774f929f2fc"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
