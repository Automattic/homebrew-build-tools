class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.3.0"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.0/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "1df39b0bfc0b7407f04b94edc57e8ed158a052d1463bdc35f109a1c3a28a2f1a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.0/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "f3f6b95312f451efded7bead3435d4cf0258664b253208ca9b30db31a6f32689"
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

