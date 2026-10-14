class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.0.8/edamame_cli-2.0.8-universal-apple-darwin"
  sha256 "d03763357cb648dbeb1dfbeaec8c1ae71bac776b6e0b957da2601b412a3f4938"
  version "2.0.8"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



