class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.4/edamame_cli-1.3.4-universal-apple-darwin"
  sha256 "8c1af33e1d532089e97c0d560e1326879ef0ca6c359b5a355d92dfa75f131886"
  version "1.3.4"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



