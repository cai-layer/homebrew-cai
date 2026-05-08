cask "cai" do
  version "1.5.0"
  sha256 "e01c287d9c2969965ab32b5d267847296803ef1f532a085655e6655bcc1614c0"

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
