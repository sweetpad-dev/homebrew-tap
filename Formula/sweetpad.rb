class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.8"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.8/sweetpad-cli-0.1.8-macos-universal.tar.gz"
  sha256 "21c0e3932b111c2a85e936aad6fa54ed6eee7d31e84b6968d1c1708c71ba90c8"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
