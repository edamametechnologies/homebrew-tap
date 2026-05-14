class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.8/edamame_cli-1.3.8-universal-apple-darwin"
  sha256 "dcac73e8dee958780bd3401c6015550f4ac005f1d4426e55773ca460f16f1cc1"
  version "1.3.8"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



