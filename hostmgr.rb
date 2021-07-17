class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/homebrew-build-tools/releases/download/0.2.0/hostmgr"
  sha256 "7c716bb8d708b39841c006eb62b0f7b78bdc53dcf0b23e2f9ec7f7d072d33538"
  license ""
 
  depends_on "libssh2"
  
  def install
      bin.install "hostmgr"   
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
