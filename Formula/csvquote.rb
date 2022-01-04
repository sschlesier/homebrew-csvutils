class Csvquote < Formula
  desc "Smart and simple CSV processing on the command-line"
  homepage "https://github.com/sschlesier/csvquote"
  url "https://github.com/sschlesier/csvquote/archive/v0.1.4.tar.gz"
  sha256 "9fe8dcc4d4718a6a59cac65436abec6828110853de000fcba2583fc4e034ea64"
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
