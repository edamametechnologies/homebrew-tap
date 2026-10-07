class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.0.5/edamame_cli-2.0.5-universal-apple-darwin"
  sha256 "e0a852c5d2388fb62df72fc28b810fc7d2baa074e6de69a9efcd5f5309a28e16"
  version "2.0.5"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



