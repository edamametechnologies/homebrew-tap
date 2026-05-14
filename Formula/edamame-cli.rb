class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.8/edamame_cli-1.3.8-universal-apple-darwin"
  sha256 "b236be231ef835823f31ef57bf10a9ab73687b9c8ab11e27cb919d26fcc77199"
  version "1.3.8"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



