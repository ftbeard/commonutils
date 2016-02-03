class Commonutils < Formula
  desc ""
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "a2c1dbb66699009e0ceb483abf0d2a0a8dde7452f430034f070d33c5d6fd2470"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel

    system "make"
    system "make", "install" # if this fails, try separate make/make install steps

    bin.install "bin/confirm"
  end

end
