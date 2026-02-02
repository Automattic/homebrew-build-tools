class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.2.3"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.2.3/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "29973f705463f5efcb3d690a0d37494281ab79671ef7f9ded31d825d345f5b84"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.2.3/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "734e5eb1ba431868d3db233471130c9f9af1b774a8d694f18209defdf0e12ef6"
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

