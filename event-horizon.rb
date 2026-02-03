class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.3.2"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.2/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "2c8446dbed08e868f36e11b40adfd4de22371f8ba8ee7f31289fef908a56359f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.2/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "83dae109dc6ff54326ec7b3bb7aeb3eb47099cd1e46255b49723f9f29b984852"
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

