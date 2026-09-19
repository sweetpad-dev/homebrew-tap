class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.9"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.9/sweetpad-cli-0.1.9-macos-universal.tar.gz"
  sha256 "e863a6195940323eb5c51c830a796edc21d745dfb6b38db33883f30639385dde"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
