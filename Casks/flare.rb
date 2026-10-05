cask "flare" do
  version "0.5.0,55"
  sha256 "99cfe3769067be03d8421170ea3253c3798e3d15674b3c16178cd0ec23f47384"

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
