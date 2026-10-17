class SubLlama < Formula
  desc "Local subtitle translator and video muxer using CTranslate2"
  homepage "https://github.com/k-wrk/Sub-LLama"
  url "https://github.com/k-wrk/Sub-LLama/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "aff6e84b730846bcc3af7cc7591ae953395cc4aa828c1acc7cf5add43f25cd12"
  license "PolyForm-Noncommercial-1.0.0"

  depends_on "cmake" => :build
  depends_on "rust" => :build
  depends_on "ffmpeg"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "sub-llama", shell_output("#{bin}/sub-llama")
  end
end
