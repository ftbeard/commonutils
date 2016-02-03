class Commonutils < Formula
  desc "ftbeard commons utilities"
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "93c900b0d09fa27019c4dfc5860a7cc531192940905f12553e0fd17854157d43"

  depends_on "lua51"

  def install
      system "make", "all"

	  bin.install "bin/confirm"
  end

end
