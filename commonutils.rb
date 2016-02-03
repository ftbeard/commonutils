class Commonutils < Formula
  desc ""
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "ce2f58761f690eba6bf3a882440f9386542dcee4a651a749cb9a4d0c4b301d53"

  def install
	ENV.deparallelize
	bin.install "bin/confirm"

	system "make"
	system "make", "install"

  end

end
