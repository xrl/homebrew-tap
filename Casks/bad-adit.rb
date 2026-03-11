cask "bad-adit" do
  version "0.1.2"
  sha256 :no_check

  url "https://github.com/xrl/bad-adit/releases/download/v#{version}/Bad.Adit_#{version}_aarch64.dmg"
  name "Bad Adit"
  desc "SSH tunnel manager for macOS with menu bar UI"
  homepage "https://github.com/xrl/bad-adit"

  depends_on arch: :arm64

  app "Bad Adit.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Bad Adit.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.tureus.bad-adit",
  ]
end
