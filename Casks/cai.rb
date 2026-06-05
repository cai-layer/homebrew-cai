cask "cai" do
  version "1.5.1"
  sha256 "5286d19c90a390f12e31e28aace87ca78ccfa952de9f0956682859e28af1dff1"

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
