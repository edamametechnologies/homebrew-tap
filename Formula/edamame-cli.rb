class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.0.9/edamame_cli-2.0.9-universal-apple-darwin"
  sha256 "6a6375368a799dd8e306b903e48313da1308c71866d6d04c42201a0a542c7936"
  version "2.0.9"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



