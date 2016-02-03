class Commonutils < Formula
  desc ""
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "b59acc73206118131db469b06e9ec9c115e73bfb0e49f870ea1754c739878268"

  def install
	ENV.deparallelize
	bin.install "bin/confirm"

	system "make"
	system "make", "install"

  end

end
