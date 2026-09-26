class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.10"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.10/sweetpad-cli-0.1.10-macos-universal.tar.gz"
  sha256 "0eb6b3469c9269ef6db0a79fab31b3885a71982e67062587b875ef112af19884"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
