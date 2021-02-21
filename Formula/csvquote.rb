class Csvquote < Formula
  desc "Smart and simple CSV processing on the command line"
  homepage "https://github.com/sschlesier/csvquote"
  url "https://github.com/sschlesier/csvquote/archive/v0.1.0.tar.gz"
  sha256 "71250f211031204f8aa5d6951a5cd6190b212617ce1e7c19aeac8fd61c70bd69"
  license "MIT"

  def install
    system "make"
    ENV["PREFIX"]=ENV["HOMEBREW_FORMULA_PREFIX"] + "/bin"
    system "mkdir", "-p", ENV["PREFIX"]
    system "make", "install"
  end

  test do
    output = shell_output("echo \"fee\",1 | #{bin}/csvquote")
    assert_match "fee,1", output
  end
end
