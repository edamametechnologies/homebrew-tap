class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.0.4/edamame_cli-1.0.4-universal-apple-darwin"
  sha256 "5aa55730f6ee717d8a65ba67b2220ddbc54b4bd7ce97030cab259920fdb30f49"
  version "1.0.4"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



