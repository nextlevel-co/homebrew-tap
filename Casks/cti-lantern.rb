cask "cti-lantern" do
  version "0.3.0"
  sha256 "f5c0b2adbc264369671258ccf9c117791d7221a7ef0ba0b35449bbeb5f0b90cf"

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
