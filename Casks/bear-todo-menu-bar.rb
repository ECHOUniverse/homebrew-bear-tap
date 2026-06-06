cask "bear-todo-menu-bar" do
  version "2.5.0"
  sha256 "6e8619b8c2986c67545cfaf73e677faa231214ddf7fbd8445fc68bbf784d0733"

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
