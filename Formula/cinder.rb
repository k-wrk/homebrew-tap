class Cinder < Formula
  desc "Interactive Terminal Utility for macOS Disk Cleanup"
  homepage "https://github.com/k-wrk/Cinder"
  url "https://github.com/k-wrk/Cinder/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "09c3fd642f5eab86dcade14754d296a3061cc5b0b31ef4b4ff759b3a60ead1d2"
  license "PolyForm-Noncommercial-1.0.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Cinder", shell_output("#{bin}/cinder --help")
  end
end
