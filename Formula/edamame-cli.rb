class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.4.5/edamame_cli-1.4.5-universal-apple-darwin"
  sha256 "8a3cb9d8e6854e47de2ef62dfa188a69312118350d7996e82d8645c58d2d7304"
  version "1.4.5"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



