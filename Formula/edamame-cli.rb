class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.3.0/edamame_cli-2.3.0-universal-apple-darwin"
  sha256 "9e4457fcdc4af3696f1935663145b96d7eb6d87d3c1948af90c29592633b57e7"
  version "2.3.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



