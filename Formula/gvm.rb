# Homebrew formula for gvm
# To install: brew install ibreez3/gvm/gvm

class Gvm < Formula
  desc "Go Version Manager - Manage multiple Go versions easily"
  homepage "https://github.com/ibreez3/gvm"
  url "https://github.com/ibreez3/gvm/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "2b0e04bf365da05171e8b23bd2de80730c362dd4651fcf49b5c860a507fdf920"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"gvm", "--version"
    system bin/"gvm", "--help"
  end
end
