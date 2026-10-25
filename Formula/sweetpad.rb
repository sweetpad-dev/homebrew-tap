class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.14"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.14/sweetpad-cli-0.1.14-macos-universal.tar.gz"
  sha256 "20457f98ac0523c74419e70f35234fab50b96c02257e03f6ab9a836947dda442"
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
