class EdamamePosture < Formula
  desc "EDAMAME Security posture analysis and remediation"
  homepage "https://edamame.tech"
  url "https://github.com/edamametechnologies/edamame_posture_cli/releases/download/v0.9.83/edamame_posture-0.9.83-universal-apple-darwin"
  sha256 "3853e311099e4abc4c557a9d8f6689562f236db9dc9a94afffe0b0cb6a804eaf"
  version "0.9.83"
  license "Apache-2.0"

  def install
    bin.install "edamame_posture-#{version}-universal-apple-darwin" => "edamame_posture"
  end

  test do
    system "#{bin}/edamame_posture", "get-core-version"
  end
end





