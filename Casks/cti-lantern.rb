cask "cti-lantern" do
  version "0.5.6"
  sha256 "b71e059d5ae3a13ab32e1d71742d1f53bbda4bb09ba0f96bf6aa17a81e307ec6"

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
