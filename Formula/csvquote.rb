class Csvquote < Formula
  desc "Smart and simple CSV processing on the command-line"
  homepage "https://github.com/sschlesier/csvquote"
  url "https://github.com/sschlesier/csvquote/archive/v0.1.5.tar.gz"
  sha256 "1e7d52f55ed25c879b0c1569f789a8f9e138df476360f1cb8341b4481748b857"
  license "MIT"

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
