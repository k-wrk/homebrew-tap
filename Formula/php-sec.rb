class PhpSec < Formula
  desc "PHP/PHP-FPM and Nginx Security Audit and Automated Remediation CLI"
  homepage ""
  url "https://github.com/k-wrk/php-sec/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "775e297a9f8008593fa0191735df725a3914fc03e263872446abaa121e569c8c"
  license "PolyForm-Noncommercial-1.0.0"


  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "php-sec", shell_output("#{bin}/php-sec")
  end
end
