class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/hostmgr/releases/download/0.14.0/hostmgr.tar.gz"
  sha256 "89691189e5b23e728ad4cc79698266cf869d6ba0f10cafd49687a6a14907eb81"
  license ""
 
  depends_on "libssh2"
  
  def install   
      bin.install "hostmgr"
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
