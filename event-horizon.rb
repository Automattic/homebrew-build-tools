class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.3.7"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.7/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "deade9f733b03ec227632bfadec852a1dfd9817f432fa8d66744ebe610329fc9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.7/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "3c9120a955dd62e4df921577bad298057caba0ef1977c6ed319709369a48c250"
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

