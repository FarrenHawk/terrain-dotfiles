percentage=$(cat /sys/class/power_supply/BAT1/capacity)
state=$(cat /sys/class/power_supply/BAT1/status)

if [ $state == "Charging" ]; then
   echo "/home/Farren/.config/waybar/battery-icons/charging.png"
elif [ $percentage -ge 0 ] && [ $percentage -lt 10 ]; then
    echo "/home/Farren/.config/waybar/battery-icons/00.png"
elif [ $percentage -ge 10 ] && [ $percentage -lt 20 ]; then
    echo "/home/Farren/.config/waybar/battery-icons/10.png"
elif [ $percentage -ge 20 ] && [ $percentage -lt 30 ]; then
    echo "/home/Farren/.config/waybar/battery-icons/20.png"
elif [ $percentage -ge 30 ] && [ $percentage -lt 40 ]; then
    echo "/home/Farren/.config/waybar/battery-icons/30.png"
elif [ $percentage -ge 40 ] && [ $percentage -lt 50 ]; then
    echo "/home/Farren/.config/waybar/battery-icons/40.png"
elif [ $percentage -ge 50 ] && [ $percentage -lt 60 ]; then
    echo "/home/Farren/.config/waybar/battery-icons/50.png"
elif [ $percentage -ge 60 ] && [ $percentage -lt 70 ]; then
    echo "/home/Farren/.config/waybar/battery-icons/60.png"
elif [ $percentage -ge 70 ] && [ $percentage -lt 80 ]; then
    echo "/home/Farren/.config/waybar/battery-icons/70.png"
elif [ $percentage -ge 80 ] && [ $percentage -lt 90 ]; then
    echo "/home/Farren/.config/waybar/battery-icons/80.png"
elif [ $percentage -ge 90 ]; then
    echo "/home/Farren/.config/waybar/battery-icons/90.png"
else
    echo "/home/Farren/.config/waybar/battery-icons/00.png"
fi
