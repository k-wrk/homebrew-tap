class Cinder < Formula
  desc "Interactive Terminal Utility for macOS Disk Cleanup"
  homepage "https://github.com/k-wrk/cinder/"
  url "https://github.com/k-wrk/cinder/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "571920945972abe24e7a2655fd88e7d541c34fecba81e46ecd33ec0e45ba3282"
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
