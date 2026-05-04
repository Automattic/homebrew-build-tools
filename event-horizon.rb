class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.4.1"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.4.1/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "7f3da2cf504be8f5f666a590a031cd749aa5dc3abd479dd8914204019b4c0bae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.4.1/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "e84edcdf7f0b08d648d8b2e1bbca99bee5a9cbcc983ca129413a63eb90615035"
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

