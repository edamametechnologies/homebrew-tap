class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.2.0/edamame_cli-1.2.0-universal-apple-darwin"
  sha256 "a6d6984a4596cceebd856555ea4e6a0c7c1061f273667db75108c99212774fac"
  version "1.2.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



