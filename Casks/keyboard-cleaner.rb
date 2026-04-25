cask "keyboard-cleaner" do
  version "1.1.0"
  sha256 "e87427ceb1d218f6d54417595e7e941111c149122076d21f3a2e9eba4438d6cc"

  url "https://github.com/egowic/KeyboardCleaner/releases/download/v#{version}/KeyboardCleaner.zip"
  name "KeyboardCleaner"
  desc "Lock your keyboard while cleaning your Mac — trackpad stays active"
  homepage "https://github.com/egowic/KeyboardCleaner"

  app "KeyboardCleaner.app"

  zap trash: [
    "~/Library/Preferences/com.egowic.KeyboardCleaner.plist",
  ]
end
