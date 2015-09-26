###########

minepath="$HOME/Library/Application Support/minecraft/versions"

function vanillaJAR() {
	echo -n "Processing vanilla jar..   "
	if [ ! -f "$minepath"/Wurst/Wurst-Bot/Wurst-Bot_lib/1.8.jar ]
		then
        mkdir -p "$minepath"/Wurst/Wurst-Bot/Wurst-Bot_lib/
		cp "$minepath"/1.8/1.8.jar "$minepath"/Wurst/Wurst-Bot/Wurst-Bot_lib/1.8.jar
		if [ $? = 0 ]
			then
			echo "[OK]"
                sleep 1
			return 0
		else
			echo "[FAILED]"
			echo "Please start Minecraft with version 1.8 (no 1.8.x)"
			exit 1
		fi
	else
		echo "[OK]"
		return 0
	fi }

function wurstJAR() {
	echo -n "Processing Wurst jar..     "
	if [ ! -f "$minepath"/Wurst/Wurst-Bot/Wurst.jar ]
		then
		cp "$minepath"/Wurst/Wurst.jar "$minepath"/Wurst/Wurst-Bot/Wurst.jar
		if [ $? = 0 ]
			then
			echo "[OK]"
                sleep 1
			return 0
		else
			echo "[FAILED]"
			echo "Error copying Wurst Jar.."
			echo "Please put a copy of the Wurst Client JAR file ^(v1.11 or higher^) into the minecraft/versions/Wurst folder."
			exit 1
		fi
	else
		echo "[OK]"
		return 0
	fi	}

function cleanUP() {
	if [ ! -f "$minepath"/Wurst/Wurst-Bot/Wurst-Bot.jar ]
		then
		rm "$minepath"/Wurst/Wurst-Bot/Wurst-Bot.jar
	fi
	mv "$minepath"/Wurst/Wurst-Bot/Wurst.jar "$minepath"/Wurst/Wurst-Bot/Wurst-Bot.jar
	echo "Cleaning Up.."
	sleep 3
	}

echo Starting Wurst-Bot launcher..
	Sleep 4
	clear
	vanillaJAR
	wurstJAR
cleanUP
java -jar "$minepath"/Wurst/Wurst-Bot/Wurst-Bot.jar
