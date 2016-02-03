class Commonutils < Formula
  desc "ftbeard commons utilities"
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.2.tar.gz"
  version "0.0.2"
  sha256 ""

  depends_on "lua51"

  def install
      system "make"

	  bin.install "bin/confirm"
  end

end
