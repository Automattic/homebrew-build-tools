class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.4.0"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.4.0/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "c17794fe74ea25101be19d8a3486ee16f68f2ef1affba0511334f18797ec66e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.4.0/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "ce1a54413605aae3631599f83f727b56c3e297a48e0ffe5d85cf37c3aded64d6"
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

