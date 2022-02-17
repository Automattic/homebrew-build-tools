class DrawText < Formula
  desc "A tiny tool for drawing raster text from HTML"
  homepage "https://github.com/automattic/drawText"
  url "https://github.com/Automattic/drawText/releases/download/0.1/drawText.tar.gz"
  sha256 "6dd925c6d3945edc86254c6e8b33a2f6ea51aa99277136667c5b859db0866559"
  license ""
   
  def install   
      bin.install "drawText"
  end
end
