class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.16/edamame_cli-1.3.16-universal-apple-darwin"
  sha256 "965491ab8715782e2e00b72c3d7d9fd215f986d513e2e58bf258bf0bfdb5701e"
  version "1.3.16"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



