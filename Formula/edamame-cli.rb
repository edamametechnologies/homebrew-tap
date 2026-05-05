class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.2/edamame_cli-1.3.2-universal-apple-darwin"
  sha256 "e7c1e529bad5f61ce10da9866219f76818cc6df8af0440e43c174194cbb6709a"
  version "1.3.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



