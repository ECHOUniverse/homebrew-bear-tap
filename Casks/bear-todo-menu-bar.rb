cask "bear-todo-menu-bar" do
  version "2.6.0"
  sha256 "d09ebf2ab8f8748a9ef3e0a2e5752ab5ab6a0bb7e9c3ee5bdc3937299088a857"

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
