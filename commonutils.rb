class Commonutils < Formula
  desc ""
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "32422ed177ee0c54d0af893fdb9327cb70b34d7d3347ea7c2f613499eaf336b9"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel

    system "make"
    system "make", "install" # if this fails, try separate make/make install steps

    bin.install "bin/confirm"

    lib.install "lib/moon/utils.moon"

    system "#{bin}/luarocks-5.1", "install", "moonscript"

  end

end
