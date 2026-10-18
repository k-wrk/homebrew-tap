class Cinder < Formula
  desc "Interactive Terminal Utility for macOS Disk Cleanup"
  homepage "https://github.com/k-wrk/cinder/"
  url "https://github.com/k-wrk/Cinder/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "09c3fd642f5eab86dcade14754d296a3061cc5b0b31ef4b4ff759b3a60ead1d2"
  license "MIT"

  depends_on "go" => :build

  def install
    # Compiles the Go binary using Homebrew's Go build environment
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/cinder"
  end

  test do
    # Simple test to verify compilation
    assert_match "CINDER", shell_output("#{bin}/cinder --help")
  end
end
