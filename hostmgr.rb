class Hostmgr < Formula
  desc "A native binary for managing macOS CI VM hosts"
  homepage "https://github.com/automattic/homebrew-build-tools"
  url "https://d2twmm2nzpx3bg.cloudfront.net/0.15.11/hostmgr-concurrency-test-1.zip"
  sha256 "d29701cd9d80e1c217a6fa0a814d475847f68b740c7b0ad0283070301626cf56"
  license ""
 
  depends_on "libssh2"
  
  def install   
      bin.install "hostmgr"
  end

  on_big_sur do
    lib.install "libswift_Concurrency.dylib"
  end

  
  test do
    system "#{bin}/hostmgr", "--version"
  end
end
