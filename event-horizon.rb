class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.3.6"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.6/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "6ab4fd66eb4f082f1736af1a77f5be5d049ef3cdb8cdbb973ddf2a6bbf65b6a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.6/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "be8f74ec88738c275d39c39bb97b1249a3b1d1ccd2100eb61d7a00f348959118"
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

