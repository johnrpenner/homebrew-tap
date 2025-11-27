cask "lissasaver" do
  version "1.0"
  sha256 "d9da7117c576edf4e147a0461f505a80529dd8d72303364c4675933a2a5e52bc"

  url "https://github.com/johnrpenner/LissaSaver/releases/download/ScreenSaver/LissaSaver.saver.zip"
  name "LissaSaver"
  desc "Elegant Lissajous figure screen saver written in Swift"
  homepage "https://github.com/johnrpenner/LissaSaver"

  screen_saver "LissaSaver.saver"

  caveats do
    reboot
  end
end
