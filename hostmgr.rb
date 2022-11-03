class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/hostmgr/releases/download/0.15.0-beta.8/hostmgr.tar.gz"
  sha256 "48262e356ca75d3fffffedf6f6da092355b24b86b0a20c1a614864e29c245c44"
  license ""
 
  depends_on "libssh2"
  
  def install   
      bin.install "hostmgr"
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
