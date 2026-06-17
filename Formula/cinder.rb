class Cinder < Formula
  desc "Interactive Terminal Utility for macOS Disk Cleanup"
  homepage "https://github.com/k-wrk/cider-cli"
  url "https://github.com/k-wrk/cider-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3dc16d29d83610e34c78307efd3fecb96318b5af0957d689feab747cb4e9dfd0"
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
