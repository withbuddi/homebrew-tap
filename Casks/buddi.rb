cask "buddi" do
  version "0.1.0-pre.51"
  sha256 "8db72391303e850a20e40ead9f43bf39449e2cdcf87256eae2304140f983bd60"

  url "https://github.com/withbuddi/buddi/releases/download/v#{version}/buddi-#{version}.dmg"
  name "buddi"
  desc "Small AI team that lives on your computer"
  homepage "https://withbuddi.com/"

  livecheck do
    url "https://withbuddi.com/download/mac/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "buddi.app"

  zap trash: [
    "~/Library/Application Support/buddi",
    "~/Library/Caches/com.withbuddi.app",
    "~/Library/Logs/buddi",
    "~/Library/Preferences/com.withbuddi.app.plist",
  ]

  caveats <<~EOS
    buddi installs its own command-line tool: open buddi and choose
    Install Command-Line Tool from its menu.

    buddi keeps your data in ~/Library/Application Support/buddi; remove it
    from the app's menu, or `brew zap buddi` after `brew uninstall buddi`.
    `brew uninstall buddi` leaves your data in place; the app's own
    Remove buddi... is the full uninstall.
  EOS
end
