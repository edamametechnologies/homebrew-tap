class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.82/edamame_cli-0.9.82-universal-apple-darwin"
  sha256 "2e34689164241fec4a5c81f4b9423992c26f9c269e4c1ecd83ed80dcd0968844"
  version "0.9.82"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



