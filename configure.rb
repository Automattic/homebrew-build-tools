class Configure < Formula
  desc "A lightweight native tool for working with configuration files"
  homepage "https://github.com/automattic/configure"
  url "https://github.com/Automattic/configure/releases/download/0.6.1/configure-macos.zip"
  sha256 "901bec3333149686c2f052ec768acae5f5e32add23604a196cdac3bce222f4ca"
  license ""

  depends_on "openssl"

  
  def install
      bin.install "configure"   
  end

  test do
    system "#{bin}/configure", "--help"
  end
end
