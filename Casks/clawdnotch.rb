cask "clawdnotch" do
  version "1.0.0"
  sha256 "053e3d71beed34e0b0a446ca572fceaa49c46a634c86ca08bc7e6cb13455d55e"

  url "https://github.com/jherduin/ClawdNotch/releases/download/v#{version}/ClawdNotch-#{version}.dmg",
      verified: "github.com/jherduin/ClawdNotch/"
  name "ClawdNotch"
  desc "Notch halo indicating Claude Code state"
  homepage "https://github.com/jherduin/ClawdNotch"

  depends_on macos: ">= :sonoma"

  app "ClawdNotch.app"

  zap trash: "~/.claude/notch_status"

  caveats <<~EOS
    ClawdNotch is not notarized. On first launch, macOS Gatekeeper may block it.
    Right-click the app and choose Open, or run:
      xattr -dr com.apple.quarantine "/Applications/ClawdNotch.app"
  EOS
end
