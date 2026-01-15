class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.2.3"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.2.3/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "e25c7f8885b5abebd19b77062fd8e6a34bdd690f9d97ce10eeb2bc40ef777782"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.2.3/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "da2fa7dbfca8c70d0d75f6034af388d467218b68915286f42afd20d0c0d45117"
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

