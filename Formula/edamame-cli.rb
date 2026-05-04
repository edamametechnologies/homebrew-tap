class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.1/edamame_cli-1.3.1-universal-apple-darwin"
  sha256 "ed25c76c5395201c2798b5349f812553c27a1fb7843d815156c56089815d265e"
  version "1.3.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



