class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.2.0/event-horizon-cli-darwin-arm64"
      sha256 "52fee4a3bd442929c8863d04b8bf1b6092bd43de9fcecccf8ac6a793e4316979"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.2.0/event-horizon-cli-linux-amd64"
      sha256 "34335a9f2d93483b68f473120d8fe1f15e78813e2b8bb578173bcf2b4460c6c2"
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

