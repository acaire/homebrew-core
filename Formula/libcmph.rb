class Libcmph < Formula
  desc "C minimal perfect hashing library"
  homepage "https://cmph.sourceforge.io"
  url "https://downloads.sourceforge.net/project/cmph/v2.0.2/cmph-2.0.2.tar.gz"
  sha256 "365f1e8056400d460f1ee7bfafdbf37d5ee6c78e8f4723bf4b3c081c89733f1e"

  livecheck do
    url :stable
  end

  bottle do
    cellar :any
    sha256 "f1cc2211ac56a2702405246535a55613855c3879885ca73aa65d76890c2aa0e5" => :big_sur
    sha256 "82227b819677c6bd9a4e74cde2e7d1ef7d1cb2699e328109dbf098d131b134c2" => :arm64_big_sur
    sha256 "c38019c153c728a28acbfe340cc86764285ec24edbdba5234b0593f83d355c22" => :catalina
    sha256 "d02c761bd6b52424528bfdcd56b8d469d7cdd2e55f625c719229edb7f011889c" => :mojave
    sha256 "abffeaf075db6387e636d43eb8fda9b76f02091bdb5533368306f899a46406c1" => :high_sierra
  end

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make", "install"
  end
end
