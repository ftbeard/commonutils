class Commonutils < Formula
  desc ""
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "071d84bccb0ff2214567327c3ff811d2ff2785642d1bb35486c13e1884288908"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel

    system "make"
    system "make", "install" # if this fails, try separate make/make install steps

    bin.install "bin/confirm"
  end

end
