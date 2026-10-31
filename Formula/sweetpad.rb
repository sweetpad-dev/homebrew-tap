class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.16"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.16/sweetpad-cli-0.1.16-macos-universal.tar.gz"
  sha256 "45f879516d0428aa86725868f0a7f455cfc274ee75fee9ffc4a8fa9532d67b46"
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
