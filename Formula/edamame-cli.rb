class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.8.3/edamame_cli-1.8.3-universal-apple-darwin"
  sha256 "f7d0a630257a6e65b219b0bdc23d2ff7a3492c867fce191d8d26ca3a716691d2"
  version "1.8.3"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



