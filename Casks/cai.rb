cask "cai" do
  version "1.3.0"
  sha256 "da363a07e1dbc6646c9ba4336993aeceec5c3562dcb5cb3106f885a681dc8dae"

  url "https://github.com/cai-layer/cai/releases/download/v#{version}/Cai-#{version}-macos.dmg"
  name "Cai"
  desc "Menu bar clipboard manager with on-device LLM"
  homepage "https://getcai.app"

  depends_on macos: ">= :sonoma"
  auto_updates true

  app "Cai.app"

  zap trash: [
    "~/Library/Preferences/com.soyasis.cai.plist",
    "~/.config/cai",
    "~/.cache/huggingface/hub/models--mlx-community--Ministral-3b-instruct-4bit",
  ]
end
