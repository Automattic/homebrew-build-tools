class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/homebrew-build-tools/releases/download/0.4.0/hostmgr.tar.gz"
  sha256 "48fdca087b7ade5c6df307788c4a3dfe4912eb786b220960eb9bcd4fab16d1ae"
  license ""
 
  depends_on "libssh2"
  
  def install   
      bin.install "hostmgr"
    
      puts Dir.glob("*")
    
      mv "homebrew.mxcl.hostmgr.sync.plist", var/"hostmgr/homebrew.mxcl.hostmgr.sync.plist"
      mv "homebrew.mxcl.hostmgr.git-mirror-sync.plist", var/"hostmgr/homebrew.mxcl.hostmgr.git-mirror-sync.plist"
      mv "homebrew.mxcl.hostmgr.git-mirror-server.plist", var/"hostmgr/homebrew.mxcl.hostmgr.git-mirror-server.plist"
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
