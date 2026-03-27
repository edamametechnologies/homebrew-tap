class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v1.1.3/edamame_posture-1.1.3-universal-apple-darwin"
  sha256 "53ca94456a668d486b6036cd8a656c3664b570ce9aa35b210c3a2120e4e22ed7"
  version "1.1.3"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end






