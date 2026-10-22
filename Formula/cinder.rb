class Cinder < Formula
  desc "Interactive Terminal Utility for macOS Disk Cleanup"
  homepage "https://github.com/k-wrk/Cinder"
  url "https://github.com/k-wrk/Cinder/archive/refs/tags/v1.5.2.tar.gz"
  sha256 "faec195925da02c7716830d9522ecc85f395440e79ffd5ba31b01c071a3491e8"
  license "PolyForm-Noncommercial-1.0.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Cinder", shell_output("#{bin}/cinder --help")
  end
end
