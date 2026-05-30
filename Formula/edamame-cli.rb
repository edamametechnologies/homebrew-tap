class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.20/edamame_cli-1.3.20-universal-apple-darwin"
  sha256 "59ba79fd2c99edfe5226e1838cdaef8401dba75ddd7679c56796792ab719d93c"
  version "1.3.20"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



