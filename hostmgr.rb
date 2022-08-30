class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/hostmgr/releases/download/0.14.1/hostmgr.tar.gz"
  sha256 "9a778f615a50b1866ff1983cce0b75867fc3a82985214083175b037d55725c03"
  license ""
 
  depends_on "libssh2"
  
  def install   
      bin.install "hostmgr"
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
