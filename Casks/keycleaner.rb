cask "keycleaner" do
  version "1.3.4"
  sha256 "5791af064fdd5ce58f73c174b8c1cc6cae71a078e7d2fc1b8bdd7261f75505b0"

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
