class Csvquote < Formula
  desc "Smart and simple CSV processing on the command-line"
  homepage "https://github.com/sschlesier/csvquote"
  url "https://github.com/sschlesier/csvquote/archive/v0.1.2.tar.gz"
  sha256 "be4b2942a03755695d448b5390176256e8cfb5275b4c37108a3518527bff1d9f"
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
