-----------------
--- AUTOSTART ---
-----------------

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function () 
  hl.exec_cmd("waybar")
  hl.exec_cmd("awww-daemon & disown")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("export GTK_IM_MODULE=fcitx5")
  hl.exec_cmd("export QT_IM_MODULE=fcitx5")
  hl.exec_cmd("export XMODIFIERS=@im=fcitx5")
  hl.exec_cmd("export INPUT_METHOD=fcitx5")
  hl.exec_cmd("export SDL_IM_MODULE=fcitx5")
  hl.exec_cmd("fcitx5")
--    hl.exec_cmd("greenclip daemon & disown")
  hl.exec_cmd("wl-paste --watch cliphist store")
  hl.exec_cmd("wl-paste --type text --watch cliphist store") --Stores only text data
  hl.exec_cmd("wl-paste --type image --watch cliphist store") --Stores only image data
end)