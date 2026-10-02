cask "remote-agent" do
  version "0.1.0"
  sha256 "02725339f5d26bbed07a725c213ea80e580d5df2f0f3457de00b9f93911b6332"

  url "https://github.com/nextlevel-co/remote-agent-releases/releases/download/v#{version}/RemoteAgent-#{version}.zip"
  name "NL Remote"
  desc "Agent that shares the screen and accepts approved remote control"
  homepage "https://github.com/nextlevel-co/remote-agent-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "NL Remote.app"

  uninstall quit: "biz.next-level.nl-remote.agent"

  zap trash: "~/Library/Application Support/nl-remote/agent"
end
