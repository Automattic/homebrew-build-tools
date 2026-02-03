class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.3.1"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.0/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "fbc4ebb2bd1f939619067a34634f62ba99ba224cf977ddb8df7d7eb14bc9ae1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.0/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "976ad7d3d63d2f1518623705d86f100d73b283e6533b618312467adba7234bd7"
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

