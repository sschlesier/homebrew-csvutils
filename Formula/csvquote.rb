class Csvquote < Formula
  desc "Smart and simple CSV processing on the command-line"
  homepage "https://github.com/dbro/csvquote"
  url "https://github.com/dbro/csvquote/archive/v0.1.5.tar.gz"
  sha256 "2e83c902f33efccaec55707b025c6da5367f786d5a117eaf386a6e17741b9d40"
  license "MIT"
  revision 1

  def install
    system "make"
    ENV["BINDIR"]=ENV["HOMEBREW_FORMULA_PREFIX"] + "/bin"
    mkdir ENV["BINDIR"]
    system "make", "install"
  end

  test do
    output = shell_output("echo \"fee\",1 | #{bin}/csvquote")
    assert_match "fee,1", output
  end
end
