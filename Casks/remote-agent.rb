cask "remote-agent" do
  version "0.2.0"
  sha256 "2fffdeac773e4f64f58627ebd65d3c10b7f0ed127d161cf9186b4262d9efabc6"

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
