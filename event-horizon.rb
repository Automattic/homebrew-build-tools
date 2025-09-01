class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.1.0/event-horizon-cli-darwin-arm64"
      sha256 "6f54c8b4e93128763372d80e503ec5ec5d6c132fc933e75284d9e76136bd26c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.1.0/event-horizon-cli-linux-amd64"
      sha256 "7fbb7cc2d838f4636363dfa332e379f0ae89fe51e5fcc173975c6d8a398b5a05"
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

