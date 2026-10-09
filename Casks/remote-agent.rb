cask "remote-agent" do
  version "0.4.4"
  sha256 "db7eb5ec2eecc24f06190520485f02ee964a92a48636ecd3423c242b4adaf26b"

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
