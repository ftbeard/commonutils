class Commonutils < Formula
  desc ""
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "a4ae20fb884a3b403f04e25ae522a695d5332ac0fb68fadb16a30cd05dd4b1a1"

  def install
	ENV.deparallelize
	bin.install "bin/confirm"

	system "make"
	system "make", "install"

  end

end
