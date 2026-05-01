cask "keycleaner" do
  version "1.4.1"
  sha256 "74f6d6f29365730f336da538bc69d9a456e45dc0f3188108de229864b02215a5"

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
