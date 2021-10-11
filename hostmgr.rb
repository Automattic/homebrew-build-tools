class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/hostmgr/releases/download/0.8.0/hostmgr.tar.gz"
  sha256 "5ff652575670154ca5e6d28b6feaa9e37d14b493ccc6f21f36283ce1da2dff0e"
  license ""
 
  depends_on "libssh2"
  
  def install   
      bin.install "hostmgr"

      FileUtils.mkdir_p var/"hostmgr/"
      FileUtils.mkdir_p etc/"hostmgr/"

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
