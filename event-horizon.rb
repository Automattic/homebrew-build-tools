class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.3.3"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.3/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "ea8eb6cb28405ab2a46127cbbad6ba42e98c6f5fe97e53e2fc96798afc039434"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.3/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "6e0058eed3b8c32be38d8ef57fab836cbaa2765e0fa5e112ee0f92afd05f5570"
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

