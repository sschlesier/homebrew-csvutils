class Csvquote < Formula
  desc "Smart and simple CSV processing on the command-line"
  homepage "https://github.com/sschlesier/csvquote"
  url "https://github.com/sschlesier/csvquote/archive/v0.1.1.tar.gz"
  license "MIT"

  def install
    system "make"
    ENV["PREFIX"]=ENV["HOMEBREW_FORMULA_PREFIX"] + "/bin"
    mkdir ENV["PREFIX"]
    system "make", "install"
  end

  test do
    output = shell_output("echo \"fee\",1 | #{bin}/csvquote")
    assert_match "fee,1", output
  end
end
