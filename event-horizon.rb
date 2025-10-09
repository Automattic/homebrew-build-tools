class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.2.1"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.2.1/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "43c9965c79b27f5eaec5271460d38f93bd2cd08832cc64e36b4ef5a5f58206c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.2.1/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "c4e636993a37da5c8990a7e7cd29f04d67a8f1fa399c02b88ef0fd63de5aee39"
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

