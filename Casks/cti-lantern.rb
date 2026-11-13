cask "cti-lantern" do
  version "0.5.2"
  sha256 "c2cc0990fd30f76ad1d84022ebf96f7a8d52c6e497f1c84952a4f7703bf66190"

  url "https://github.com/nextlevel-co/cti-lantern-releases/releases/download/v#{version}/CTILantern-#{version}.zip"
  name "CTI Lantern"
  desc "Read-only checker for vulnerable packages and exposed secrets"
  homepage "https://github.com/nextlevel-co/cti-lantern-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CTI Lantern.app"

  uninstall launchctl: "biz.next-level.lantern.agent.helper",
            quit:      "biz.next-level.lantern.agent"

  zap trash: "~/Library/Application Support/biz.next-level.lantern.agent"
end
