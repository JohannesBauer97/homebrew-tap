cask "fastproxy" do
  version "1.0.1"
  sha256 "4ff48395dbf8e12f6051f84b0fa1443359774dec37e66f127110344fe23775ab"

  url "https://github.com/JohannesBauer97/fastproxy/releases/download/v#{version}/FastProxy-#{version}-macos-arm64.zip"
  name "FastProxy"
  desc "Native macOS menu bar forward proxy with Kerberos upstream authentication"
  homepage "https://github.com/JohannesBauer97/fastproxy"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "FastProxy.app"
  binary "#{appdir}/FastProxy.app/Contents/MacOS/fastproxy-cli"

  uninstall launchctl: "com.johannesbauer.fastproxy",
            quit: "com.johannesbauer.fastproxy"

  zap trash: [
    "~/.fastproxy",
    "~/Library/Application Support/FastProxy",
    "~/Library/LaunchAgents/com.johannesbauer.fastproxy.plist",
    "~/Library/Preferences/com.johannesbauer.fastproxy.plist",
    "~/Library/Saved Application State/com.johannesbauer.fastproxy.savedState",
  ]

  caveats <<~EOS
    FastProxy is a menu bar app. Launch it from /Applications after installation.
    The default proxy port is 3129.
    The command-line tool is available as fastproxy-cli.
  EOS
end
