class Csvquote < Formula
  desc "Smart and simple CSV processing on the command-line"
  homepage "https://github.com/sschlesier/csvquote"
  url "https://github.com/sschlesier/csvquote/archive/v0.1.1.tar.gz"
  sha256 "aac41eff847773b9f2c1d60e428b28de67b7036e6e52f26b270d6fd6546528cb"
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
