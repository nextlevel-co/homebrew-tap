cask "remote-agent" do
  version "0.4.1"
  sha256 "0b11a40525534f9a4cfc4cd4f237caad6d72b2eccefdf53b5609d914c364d7ea"

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
