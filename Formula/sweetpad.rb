class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.19"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.19/sweetpad-cli-0.1.19-macos-universal.tar.gz"
  sha256 "4398f8cbf52af1d5955117ae45db18964edfa9f8e65a8f1aec32edb3da63fac2"
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
