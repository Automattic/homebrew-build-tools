class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/hostmgr/releases/download/0.15.13/hostmgr.tar.gz"
  sha256 "cfb6cc7c1dd9f2628f1e2161ecb92ced1a05b3572333b944900d5d8371de8b43"
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
