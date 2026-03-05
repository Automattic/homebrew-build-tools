class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.3.5"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.5/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "4b07711d7183b68fb84094e2b0164c06157641269d4eceac1659d747d8340fd5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.5/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "88f375d92d047e2b3d527ade31ad5383c2b569b594f98314c013a395df4f676a"
    end
  end

  def install
    if OS.mac?
      bin.install "event-horizon-cli-darwin-arm64" => "event-horizon"
    elsif OS.linux?
      bin.install "event-horizon-cli-linux-amd64" => "event-horizon"
    end
  end

  test do
    system "#{bin}/event-horizon", "--help"
  end
end

