class Sweetpad < Formula
  desc "Build, run, and explore Xcode projects from the terminal"
  homepage "https://github.com/sweetpad-dev/sweetpad"
  version "0.1.17"
  url "https://github.com/sweetpad-dev/sweetpad/releases/download/cli-v0.1.17/sweetpad-cli-0.1.17-macos-universal.tar.gz"
  sha256 "01b9b99cb6396868364c9e175d3f5859137c56dcf75e4c8a77a782e94322fd74"
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
