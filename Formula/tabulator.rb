class Tabulator < Formula
  desc "A set of Unix shell command line tools for quick and convenient batch processing of tabular text files."
  homepage "https://github.com/stefan-schroedl/tabulator"
  url "https://github.com/stefan-schroedl/tabulator/archive/v1.2.1.tar.gz"
  sha256 "a83d044212b00ccee9b2ce187f9442b1eb41798b9a84a9216cb9773af5c3601b"
  license "MIT"
  bottle :unneeded

  def install
    bin.install Dir["bin/tbl*"]
  end

  test do
    output = shell_output("printf \"a,1\\nb,2\\n\" | #{bin}/tbltranspose")
    assert_match "a,b", output
  end
end
