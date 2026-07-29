class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.7.1/edamame_cli-1.7.1-universal-apple-darwin"
  sha256 "da5e19d8a636333846925f835e7e87592dcebd26da10b05f9709529ae545280f"
  version "1.7.1"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



