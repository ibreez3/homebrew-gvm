# Homebrew formula for gvm
# Repository: https://github.com/ibreez3/homebrew-gvm
# To install: brew tap ibreez3/gvm && brew install gvm

class Gvm < Formula
  desc "Go Version Manager - Manage multiple Go versions easily"
  homepage "https://github.com/ibreez3/gvm"
  url "https://github.com/ibreez3/gvm/archive/refs/tags/v0.2.0.tar.gz"
  sha256 :no_check # Will be updated on release
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
