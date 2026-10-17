class Tappub < Formula
  desc "Agnostic CLI to publish and update Homebrew Tap formulas automatically"
  homepage "https://github.com/k-wrk/tappub"
  url "https://github.com/k-wrk/tappub/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "86378de9031e41dfc9ab5382950da6ee607a10475eef6c8858678a15c64bc2a1"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "tappub", shell_output("#{bin}/tappub")
  end
end
