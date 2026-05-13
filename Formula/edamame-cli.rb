class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.7/edamame_cli-1.3.7-universal-apple-darwin"
  sha256 "ffa7b90a156263c443309268eb48196246b506c4b10a77dbfbafe1cf279fc7a1"
  version "1.3.7"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



