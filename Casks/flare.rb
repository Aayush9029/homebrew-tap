cask "flare" do
  version "0.4.1,53"
  sha256 "d71ba0985b462efcc0efbe76e37acaa047911ce571d05f7f2dc002e0971b0337"

  url "https://github.com/Aayush9029/flare-releases/releases/download/v#{version.csv.first}%2B#{version.csv.second}/Flare-#{version.csv.first}.dmg"
  name "Flare"
  desc "Floating quick chat for ChatGPT and other AI providers"
  homepage "https://github.com/Aayush9029/flare-releases"

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
