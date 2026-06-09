class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v1.4.0/edamame_cli-1.4.0-universal-apple-darwin"
  sha256 "6d7c2b2339da695de7016c7680d19b28de2b56e8cbfd5c1c0f7ecfc2404ed322"
  version "1.4.0"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



