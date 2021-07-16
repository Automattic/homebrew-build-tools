class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/homebrew-build-tools/raw/trunk/hostmgr"
  sha256 "bde5c398cdeec740fd60d1ec3dc6f4da6e4ca5c0fc8ac4f2cba1b9374c618dc0"
  license ""
 
  def install
      bin.install "hostmgr"   
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
