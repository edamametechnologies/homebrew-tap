class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.11/edamame_cli-1.3.11-universal-apple-darwin"
  sha256 "2378c670d56942aedba808c36ab583f2626eeb478bf6b70531d8a76e09e00e57"
  version "1.3.11"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



