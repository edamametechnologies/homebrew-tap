class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.1.2/edamame_cli-1.1.2-universal-apple-darwin"
  sha256 "4dc16fab989882cd8dfddd4fef422b2da56c41a0ec7dbf8bc2a0bfc57d5cba81"
  version "1.1.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



