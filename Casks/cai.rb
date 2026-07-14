cask "cai" do
  version "1.5.3"
  sha256 "6812c5918f89ed84d108a791194eb52045f5d41c87b33120822873983f9ac593"

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
