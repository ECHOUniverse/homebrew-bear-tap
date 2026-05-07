cask "bear-todo-menu-bar" do
  version "2.1.1"
  sha256 "2cd56ba18b97edb9c9d3f549539c0411a25a8aa39d521a5e840569039fb43754"

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
