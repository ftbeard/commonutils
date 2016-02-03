class Commonutils < Formula
  desc ""
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "44e7f5f2fbcac7307caf3c021bf8479c3720297a8f894e48aecbb9cdc5e3d088"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel

    system "make"
    system "make", "install" # if this fails, try separate make/make install steps

    bin.install "bin/confirm"
  end

end
