class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/hostmgr/releases/download/0.17.3/hostmgr.tar.gz"
  sha256 "91c72a14826647546c5a52e74531229ee303c6b26c75a00d0f3e8e7e9d66845b"
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
