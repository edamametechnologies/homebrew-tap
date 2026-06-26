class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.4.6/edamame_cli-1.4.6-universal-apple-darwin"
  sha256 "ac3d79c86dd1a0608826c7c2511204d14d900a905a22e1d8d2303133c88dc6e9"
  version "1.4.6"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



