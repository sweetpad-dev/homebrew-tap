class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.22"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.22/sweetpad-cli-0.1.22-macos-universal.tar.gz"
  sha256 "c6a9e0570db639185f12950a1d4224ce5f1ac7cb48c73aced1d7b468050a48eb"
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
