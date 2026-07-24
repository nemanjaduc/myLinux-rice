# ~/.config/hypr/get-wallpaper.sh
#!/bin/bash
grep 'wallpaper =' ~/.config/waypaper/config.ini | cut -d'=' -f2 | xargs
