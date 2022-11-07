class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://d2twmm2nzpx3bg.cloudfront.net/0.15.12/hostmgr.zip"
  sha256 "a2a50b213e9af877792ec46f479526d82ff9fdd055673ab17f022269aeafe572"
  license ""
 
  depends_on "libssh2"
  
  def install   
      bin.install "hostmgr"
    
      on_big_sur do
          lib.install "libswift_Concurrency.dylib"
      end
  end
  
  test do
    system "#{bin}/hostmgr", "--version"
  end
end
