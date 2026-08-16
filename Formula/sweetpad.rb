class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.6"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.6/sweetpad-cli-0.1.6-macos-universal.tar.gz"
  sha256 "d3230c6b61a312e9ff28f15f5e2213119513433f974a9fd3ef0db5e554bba6c7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
