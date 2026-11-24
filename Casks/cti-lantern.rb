cask "cti-lantern" do
  version "0.5.8"
  sha256 "86188c6904d06b26c8b92dceb9f330f86b8529a44cf1a4d8be9f9c4b83f09819"

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
