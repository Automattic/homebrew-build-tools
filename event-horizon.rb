class EventHorizon < Formula
  desc "A multi-language code generation tool for type-safe event tracking."
  homepage "https://github.com/Automattic/EventHorizon"
  version "0.3.8"
  license ""

  on_macos do
    on_arm do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.8/event-horizon-cli-darwin-arm64",
        using: :nounzip
      sha256 "b467aef70074dd6b506042b67c86cb5a26ce79a4d8372f1540b9caae8eafd370"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Automattic/EventHorizon/releases/download/0.3.8/event-horizon-cli-linux-amd64",
        using: :nounzip
      sha256 "eeed65de8df12b001aac21964e057bf3decc94313fb49b5a960e2799829d9408"
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

