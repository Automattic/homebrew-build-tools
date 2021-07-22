class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/homebrew-build-tools/releases/download/0.5.0/hostmgr.tar.gz"
  sha256 "bda0734cadd64b2a8356b09ebf258c106cf28a5f58d5ad010c488893f6939939"
  license ""
 
  depends_on "libssh2"
  
  def install   
      bin.install "hostmgr"

      mv "com.automattic.hostmgr.sync.plist", var/"hostmgr/com.automattic.hostmgr.sync.plist"
      mv "com.automattic.hostmgr.git-mirror-sync.plist", var/"hostmgr/com.automattic.hostmgr.git-mirror-sync.plist"
      mv "com.automattic.hostmgr.git-mirror-server.plist", var/"hostmgr/com.automattic.hostmgr.git-mirror-server.plist"
  end

  def caveats
    <<~EOS
      hostmgr is installed, but to run its services, you'll need to run:
      
      mv #{var}/hostmgr/*.plist ~/Library/LaunchAgents/
      
      to set up the launch agents. From there, they can be started using:
      
      launchctl load -w ~/Library/LaunchAgents/com.automattic.hostmgr.sync.plist
      launchctl load -w ~/Library/LaunchAgents/com.automattic.hostmgr.git-mirror-sync.plist
      launchctl load -w ~/Library/LaunchAgents/com.automattic.hostmgr.git-mirror-server.plist
      
      launchctl start com.automattic.hostmgr.sync.plist
      launchctl start com.automattic.hostmgr.git-mirror-sync.plist
      launchctl start com.automattic.hostmgr.git-mirror-server.plist
      
    EOS
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
