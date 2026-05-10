class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.5/edamame_cli-1.3.5-universal-apple-darwin"
  sha256 "f8261ddd5da34bfb7e5eaf6c9d3752a1e843cb598edad951062262fd910fa83e"
  version "1.3.5"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



