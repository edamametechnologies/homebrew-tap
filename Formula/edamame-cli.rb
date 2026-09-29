class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.0.2/edamame_cli-2.0.2-universal-apple-darwin"
  sha256 "6e3434705c3f896931446ff33bbeb4ca27372453d9d0916d02876ef72a828d1d"
  version "2.0.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



