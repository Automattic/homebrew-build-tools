class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/homebrew-build-tools/releases/download/0.4.0/hostmgr.tar.gz"
  sha256 "191960b7ec09987ce85bab066d95dddd0cbd3e9b30f449b18dac52045b57bbb9"
  license ""
 
  depends_on "libssh2"
  
  def install   
      bin.install "hostmgr"

      mv "com.automattic.hostmgr.sync.plist", var/"hostmgr/com.automattic.hostmgr.sync.plist"
      mv "com.automattic.hostmgr.git-mirror-sync.plist", var/"hostmgr/com.automattic.hostmgr.git-mirror-sync.plist"
      mv "com.automattic.hostmgr.git-mirror-server.plist", var/"com.automattic.hostmgr.git-mirror-server.plist"
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
