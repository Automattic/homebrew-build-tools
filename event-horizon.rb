class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.4.2"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.4.2/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "15e8204f04d5b695094583be6500aa1ea391310dd5f65b22239697c94b4e941c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.4.2/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "4c9ff6cf82b3a3b5294d9c767157073d1f8139dea040cf182b2f7a27be3b03ac"
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

