class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://github.com/Automattic/homebrew-build-tools/releases/download/0.1.0/hostmgr"
  sha256 "b69bdbffc2c323b72fc41f25d62d282f9d6acb3e322e19ca3e4da0e6f08933cb"
  license ""
 
  def install
      bin.install "hostmgr"   
  end

  test do
    system "#{bin}/hostmgr", "--version"
  end
end
