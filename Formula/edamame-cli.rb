class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.0.6/edamame_cli-2.0.6-universal-apple-darwin"
  sha256 "dbd5b94790765fa075f1aa02d5c54938ebcbb3c692acac6e4dc547424e5ea6e4"
  version "2.0.6"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



