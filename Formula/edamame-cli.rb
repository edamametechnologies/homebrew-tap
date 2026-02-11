class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.0.3/edamame_cli-1.0.3-universal-apple-darwin"
  sha256 "748d269141dd2ec867829a96e8a1a45a1ad50ea6fb2a39f2dd069887d484604f"
  version "1.0.3"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



