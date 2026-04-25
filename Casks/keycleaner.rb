cask "keycleaner" do
  version "1.3.1"
  sha256 "3dbaee07f5534ab1dfae7487d41e89e4e8d776a4de4241b1ac00a38561ba1685"

  url "https://github.com/egowic/KeyboardCleaner/releases/download/v#{version}/KeyboardCleaner.zip"
  name "KeyboardCleaner"
  desc "Lock your keyboard while cleaning your Mac — trackpad stays active"
  homepage "https://github.com/egowic/KeyboardCleaner"

  app "KeyboardCleaner.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/KeyboardCleaner.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.egowic.KeyboardCleaner.plist",
  ]
end
