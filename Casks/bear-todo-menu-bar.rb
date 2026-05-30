cask "bear-todo-menu-bar" do
  version "2.4.1"
  sha256 "8b41c0f67eb0f678ed8e150596f0f1826d1e593d7b944a4d8b58130f39aaf6ec"

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
