class Commonutils < Formula
  desc "ftbeard commons utilities"
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "bfcf91486443063fbf4c2f295e3ca58221cbc368dd8b6624f278eb09a6cab42d"

  depends_on "lua51"

  def install
      system "make"

	  bin.install "bin/confirm"
  end

end
