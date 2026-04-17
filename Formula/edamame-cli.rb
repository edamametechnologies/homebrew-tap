class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.2.1/edamame_cli-1.2.1-universal-apple-darwin"
  sha256 "751fae4c6cb769332de122f2d7c2cb1bd066fc72eddc11d25957019ee5a47078"
  version "1.2.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



