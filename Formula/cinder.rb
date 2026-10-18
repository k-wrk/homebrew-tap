class Cinder < Formula
  desc "Interactive Terminal Utility for macOS Disk Cleanup"
  homepage "https://github.com/k-wrk/Cinder"
  url "https://github.com/k-wrk/Cinder/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "d8dabb47f516e8592489e92e8267bbb4e77ffd34a29b3c7350cf90f8e93ee6b5"
  license "PolyForm-Noncommercial-1.0.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Cinder", shell_output("#{bin}/cinder --help")
  end
end
