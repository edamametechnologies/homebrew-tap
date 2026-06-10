class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.4.1/edamame_cli-1.4.1-universal-apple-darwin"
  sha256 "c76c4fdc20615799a2e6cd2fc0b70275fbea8b56cf61702500196d21c7930451"
  version "1.4.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



