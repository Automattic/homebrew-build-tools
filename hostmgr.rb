class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/hostmgr/releases/download/0.14.2/hostmgr.tar.gz"
  sha256 "f0c6c6ae925718e8075989806ee7eb79e9fac67da4922369a9ee07520f09c304"
  license ""
 
  depends_on "libssh2"
  
  def install   
      bin.install "hostmgr"
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
