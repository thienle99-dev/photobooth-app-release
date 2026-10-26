cask "photobooth-studio" do
  version "1.0.0"
  sha256 "bcaf387dc34d5047273fdaa5e58fd6df881d9b0815aa62b703884333f7634104"

  url "https://github.com/thienle99-dev/photobooth-app-release/releases/download/v#{version}/PhotoBoothStudio-#{version}.zip"
  name "PhotoBooth Studio"
  desc "Photo booth session capture and print control"
  homepage "https://github.com/thienle99-dev/photobooth-app-release"

  livecheck do
    url "https://github.com/thienle99-dev/photobooth-app-release/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "PhotoBoothStudio.app"
end
