class Conv < Formula
  desc "Natural-syntax unit converter: conv 5 ft 11 in to cm"
  homepage "https://github.com/YOURNAME/conv"
  url "https://github.com/YOURNAME/conv/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PASTE_THE_CHECKSUM_HERE"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "180.34 cm", shell_output("#{bin}/conv 5 ft 11 in to cm")
    assert_match version.to_s, shell_output("#{bin}/conv --version")
  end
end
