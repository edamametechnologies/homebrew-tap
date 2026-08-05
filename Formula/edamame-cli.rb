class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.7.2/edamame_cli-1.7.2-universal-apple-darwin"
  sha256 "dee0e4e480ab96ce05d5c868644dbd8669a997e5b809a1ee2c1a61af4a93b0c4"
  version "1.7.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



