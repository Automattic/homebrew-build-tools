class Secrets2env < Formula
  desc "A tiny tool that converts AWS Secrets Manager API responses into environment variables."
  homepage "https://github.com/automattic/secrets2env"
  url "https://github.com/Automattic/secrets2env/releases/download/0.1.0/secrets2env-macos.zip"
  sha256 "38ee73d7d89c00e327abed613806e7bc8993532971ec4d849b7233f417b3ed01"
  license "mpl"

  def install
      bin.install "secrets2env"   
  end

  test do
    system "yes"
  end
end
