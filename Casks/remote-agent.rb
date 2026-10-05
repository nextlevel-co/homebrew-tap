cask "remote-agent" do
  version "0.4.0"
  sha256 "d11bb26364c1b6e8f5d1ce02addff5e8f0c06ca06b0c8a594cf9631bc27af5c8"

  url "https://github.com/nextlevel-co/remote-agent-releases/releases/download/v#{version}/RemoteAgent-#{version}.zip"
  name "Remote Agent"
  desc "Agent that shares the screen and accepts approved remote control"
  homepage "https://github.com/nextlevel-co/remote-agent-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Remote Agent.app"

  uninstall quit: "biz.next-level.nl-remote.agent"

  zap trash: "~/Library/Application Support/nl-remote/agent"
end
