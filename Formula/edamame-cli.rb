class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.3.5/edamame_cli-1.3.5-universal-apple-darwin"
  sha256 "1bf62bf73b4f05f62ea444ba0de068fddd18743e6f1959893756cabad306b745"
  version "1.3.5"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



