class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.0.7/edamame_cli-2.0.7-universal-apple-darwin"
  sha256 "1db288a8544ed4b7fe0006c99e825ffe5653860000b93c2cf8b21ad8c6e233a6"
  version "2.0.7"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



