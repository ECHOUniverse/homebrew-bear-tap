cask "bear-todo-menu-bar" do
  version "1.5.0"
  sha256 "0a386e7002b57682373090302833851f31ffdad59b207a467e71080b2545019e"

  url "https://github.com/ECHOUniverse/BearTodoMenuBar/releases/download/v#{version}/BearTodoMenuBar.zip"
  name "BearTodoMenuBar"
  desc "Sync Bear note checkboxes with system Reminders"
  homepage "https://github.com/ECHOUniverse/BearTodoMenuBar"

  depends_on macos: ">= :ventura"

  app "BearTodoMenuBar.app"

  uninstall quit: "com.beartodo.menubar"

  zap trash: [
    "~/Library/Preferences/com.beartodo.menubar.plist",
  ]
end
