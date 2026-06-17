cask "sketch@99.5" do
  version "99.5-178873"
  sha256 "c2ccf4ff45e54ad9310fd6042bd5b9f474c02ffe59f3a83b8c3523212be4e521"

  url "https://download.sketch.com/sketch-#{version}.zip"
  name "Sketch"
  desc "Digital design and prototyping platform (pinned to last licensed version)"
  homepage "https://www.sketch.com/"

  app "Sketch.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bohemiancoding.sketch3.sfl*",
    "~/Library/Application Support/com.bohemiancoding.sketch3",
    "~/Library/Caches/com.bohemiancoding.sketch3",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3",
    "~/Library/Logs/com.bohemiancoding.sketch3",
    "~/Library/Preferences/com.bohemiancoding.sketch3.LSSharedFileList.plist",
    "~/Library/Preferences/com.bohemiancoding.sketch3.plist",
    "~/Library/Cookies/com.bohemiancoding.sketch3.binarycookies",
  ]
end
