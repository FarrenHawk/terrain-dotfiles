if (open('/sys/class/power_supply/BAT1/status').read() == "Charging\n") or (open('/sys/class/power_supply/BAT1/status').read() == "Full\n"):
    print('/home/Farren/.config/waybar/battery-icons/charging.png')
else:
    print('/home/Farren/.config/waybar/battery-icons/' + str((int(open('/sys/class/power_supply/BAT1/capacity').read()) // 10) * 10) + '.png')
