cask "cti-lantern" do
  version "0.5.7"
  sha256 "57333b3f68a2cb5cdb2b52e1889f386265d0d3c065efdd23c9ffe77cee44be15"

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
