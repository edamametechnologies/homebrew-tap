class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.19/edamame_cli-1.3.19-universal-apple-darwin"
  sha256 "ea4ba6cb162cb68964ebd9e61dd2c9b36a1989188d80db22a5c039c68d75f959"
  version "1.3.19"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



