class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.2.1"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.2.1/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "9d7e4393a6544d6439de0f296419b207da194ce33f406aa856d0c00a920a5d26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.2.1/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "48df801b1a1fb02983abe73e6b4d88855be89b9d63401994c420f1b22e0cc978"
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

