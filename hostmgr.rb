class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/homebrew-build-tools/releases/download/0.3.0/hostmgr"
  sha256 "01bbb0f25cd1cc6ac7958faf4b282b43556f3ddace570a3f408143c0fcfe098d"
  license ""
 
  depends_on "libssh2"
  
  def install
      bin.install "hostmgr"   
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
