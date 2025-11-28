class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.82/edamame_posture-0.9.82-universal-apple-darwin"
  sha256 "a4af3957db3deae9a26890bf8d8a5a831bdb59377909bc42d0a0035359dd0727"
  version "0.9.82"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end



