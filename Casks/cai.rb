cask "cai" do
  version "1.4.0"
  sha256 "3bf47b2ed501eccb18a2df75fc643221c80efdbc7fd13941b3b2a6c82fa81bef"

  url "https://github.com/cai-layer/cai/releases/download/v#{version}/Cai-#{version}-macos.dmg"
  name "Cai"
  desc "Menu bar clipboard manager with on-device LLM"
  homepage "https://getcai.app"

  depends_on macos: ">= :sonoma"
  auto_updates true

  app "Cai.app"

  zap trash: [
    "~/Library/Preferences/com.soyasis.cai.plist",
    "~/Library/Application Support/Cai",
    "~/.config/cai",
    "~/.cache/huggingface/hub/models--mlx-community--Ministral-3b-instruct-4bit",
  ]
end
