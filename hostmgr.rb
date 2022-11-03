class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/hostmgr/releases/download/0.15.10/hostmgr.tar.gz"
  sha256 "7ef41cf34f6cbe664be68087c92c22d669d7f7464d1a570ea1bcd0c96f5ae4cc"
  license ""
 
  depends_on "libssh2"
  
  def install   
      bin.install "hostmgr"
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
