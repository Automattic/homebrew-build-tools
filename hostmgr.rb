class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/homebrew-build-tools/releases/download/0.4.0/hostmgr.tar.gz"
  sha256 "0a07e66e1a5e4b762b5bbf6fa964c7ff399bc2cd6195cfe5e92d0784e4147dc3"
  license ""
 
  depends_on "libssh2"
  
  def launch_agents_path
    "/Users/#{ENV['USERNAME']}/Library/LaunchAgents"
  end
  
  def install
      bin.install "hostmgr"
      prefix.install "homebrew.mxcl.hostmgr.sync.plist", File.join(launch_agents_path, "homebrew.mxcl.hostmgr.sync.plist")
      prefix.install "homebrew.mxcl.hostmgr.git-mirror-sync.plist", File.join(launch_agents_path, "homebrew.mxcl.hostmgr.git-mirror-sync.plist")
      prefix.install "homebrew.mxcl.hostmgr.git-mirror-server.plist", File.join(launch_agents_path, "homebrew.mxcl.hostmgr.git-mirror-server.plist")
  end
 
  test do
    system "#{bin}/hostmgr", "--version"
  end
end
