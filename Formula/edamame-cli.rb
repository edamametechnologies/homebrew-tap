class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.0.1/edamame_cli-2.0.1-universal-apple-darwin"
  sha256 "3d7e53ff42d7277cb773b99b41340d3a00b69479e33f294d19567a4d0905fba7"
  version "2.0.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



