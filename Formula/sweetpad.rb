class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.13"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.13/sweetpad-cli-0.1.13-macos-universal.tar.gz"
  sha256 "f4193a084b51641e5abfdafceb41a1a358782c6db3c8cacec2cbb4adf91abc2a"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sweetpad"
    # The name editors start the debug adapter by when they can't pass it
    # arguments ('sweetpad dap init --editor zed').
    bin.install_symlink "sweetpad" => "sweetpad-dap"
  end

  test do
    assert_match "sweetpad #{version}", shell_output("#{bin}/sweetpad --version")
  end
end
