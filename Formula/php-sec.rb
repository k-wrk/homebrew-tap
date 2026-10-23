class PhpSec < Formula
  desc "PHP/PHP-FPM and Nginx Security Audit and Automated Remediation CLI"
  homepage ""
  url "https://github.com/k-wrk/php-sec/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "8bae83293999e57958c1f43a4afe16be9ea7502506dfbaa23e24c6c9eb69a3bf"
  license "PolyForm-Noncommercial-1.0.0"


  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "php-sec", shell_output("#{bin}/php-sec")
  end
end
