cask "keycleaner" do
  version "1.2.0"
  sha256 "036be294c566b86d108cd656eaad3db84a27a6dcd9e8864abffb1e75dab22e3c"

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
