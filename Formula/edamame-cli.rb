class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v0.9.82/edamame_cli-0.9.82-universal-apple-darwin"
  sha256 "e64945918371e153533750314c563250feab100f2ef7d2ac00e6089dd13fac54"
  version "0.9.82"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



