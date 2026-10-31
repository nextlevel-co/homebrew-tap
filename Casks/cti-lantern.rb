cask "cti-lantern" do
  version "0.1.2"
  sha256 "9f6cd109cc234a4e928ac8e9e139f2b42fb873ead38611f136210200e1c9ed32"

  url "https://github.com/nextlevel-co/cti-lantern-releases/releases/download/v#{version}/CTILantern-#{version}.zip"
  name "CTI Lantern"
  desc "Read-only checker for vulnerable packages and exposed secrets"
  homepage "https://github.com/nextlevel-co/cti-lantern-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CTI Lantern.app"

  uninstall quit: "biz.next-level.lantern.agent"
end
