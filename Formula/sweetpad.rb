class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.1"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.1/sweetpad-cli-0.1.1-macos-universal.tar.gz"
  sha256 "aea5c9094f31d3e8a198e490509e92bd756e599734d377d011c8c44e482d7bc3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
