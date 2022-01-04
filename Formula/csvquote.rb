class Csvquote < Formula
  desc "Smart and simple CSV processing on the command-line"
  homepage "https://github.com/sschlesier/csvquote"
  url "https://github.com/sschlesier/csvquote/archive/v0.1.3.tar.gz"
  sha256 "c513d1bb48f4c83ab08abff93c7e90bdbd9432ba5dd57e26e747e3b7d6834602"
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
