import os

battery_info = "/sys/class/power_supply/BAT1/uevent"

with open(battery_info, "r") as myFile:
	for line in myFile:
		key, value = line.split("=")
		if key == "POWER_SUPPLY_CAPACITY":
			if int(value) < 75:
				os.system("vlc /mnt/all_files/work/personal_configs/battery_low/voice.mp3")