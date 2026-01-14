class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.83/edamame_cli-0.9.83-universal-apple-darwin"
  sha256 "f44b6304ffb3afb41a872fd7bced8bde7fd9169a86ee723b4020c0f7eb1ca69d"
  version "0.9.83"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



