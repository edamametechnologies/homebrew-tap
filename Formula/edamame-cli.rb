class EdamameCli < Formula
  desc "EDAMAME CLI interface to EDAMAME Posture service"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_cli/releases/download/v2.2.2/edamame_cli-2.2.2-universal-apple-darwin"
  sha256 "3224488024243d11b3b93c5181fc86b8e64dd6870b80c0817b8b62148fb2f43b"
  version "2.2.2"
  license "Apache-2.0"

  def install
    bin.install "edamame_cli-#{version}-universal-apple-darwin" => "edamame_cli"
  end

  test do
    system "#{bin}/edamame_cli", "--help"
  end
end



