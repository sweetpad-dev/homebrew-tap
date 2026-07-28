class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.4"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.4/sweetpad-cli-0.1.4-macos-universal.tar.gz"
  sha256 "7963769748078f86c5fe4f0f24432b8fe95c62cc8ad12ac5f91af0823915e520"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
