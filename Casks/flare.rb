cask "flare" do
  version "0.5.1,56"
  sha256 "32be44a8b8bcc3e4e08c029151b0621c11220a72aeaf8488fb74594120560f9e"

  url "https://github.com/Aayush9029/Flare/releases/download/v#{version.csv.first}%2B#{version.csv.second}/Flare-#{version.csv.first}.dmg"
  name "Flare"
  desc "Floating quick chat for ChatGPT and other AI providers"
  homepage "https://github.com/Aayush9029/Flare"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)\+(\d+)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :tahoe

  app "Flare.app"

  zap trash: [
    "~/Library/Application Support/Flare",
    "~/Library/Preferences/ca.optimalapps.flare.plist",
  ]
end
