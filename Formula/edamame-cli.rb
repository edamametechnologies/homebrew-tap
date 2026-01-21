class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.84/edamame_cli-0.9.84-universal-apple-darwin"
  sha256 "7ea7222b005bbef9b6f4cafe69ceb255f10588cdf08cd97c2d9bb6cec92c5313"
  version "0.9.84"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



