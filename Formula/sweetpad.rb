class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.21"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.21/sweetpad-cli-0.1.21-macos-universal.tar.gz"
  sha256 "0380b1ca55fa7070b5bf1ca37fe1c5f20f06983e8e686c5baad84ea9d6a2cd0f"
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
