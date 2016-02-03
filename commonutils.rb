class Commonutils < Formula
  desc "ftbeard commons utilities"
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "e09bf04b2afc7c9c039520797c216c569c8ede22f4fd573035e61a93dd58597a"

  depends_on "lua51"

  def install
      system "make"

	  bin.install "bin/confirm"
  end

end
