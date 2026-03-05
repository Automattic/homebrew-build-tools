class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.3.4"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.4/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "ae982583013cc8df1e2c6890d2742543606ca253930c0d650e221d5ca91702a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.4/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "320d098242d1a0a864a7e10c2bfc871ed3021cf8d897220c2a872599c6d0fcde"
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

