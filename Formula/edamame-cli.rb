class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.4/edamame_cli-1.3.4-universal-apple-darwin"
  sha256 "43b9a0862b9acdfbff0a9e525e48a16d40860b3164a189cd69b4e7e252911376"
  version "1.3.4"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



