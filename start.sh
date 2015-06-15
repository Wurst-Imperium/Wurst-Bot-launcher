###########
#minepath="~/Library/Application\ Support/minecraft/versions"

function vanillaJAR() {
	echo -n "Processing vanilla jar..   "
	if [ ! -f "~/Library/Application\ Support/minecraft/versions/Wurst/Wurst-Bot/Wurst-Bot_lib/1.8.jar" ]
		then
		cp ~/Library/Application\ Support/minecraft/versions/1.8/1.8.jar ~/Library/Application\ Support/minecraft/versions/Wurst/Wurst-Bot/Wurst-Bot_lib/1.8.jar
		if [ $? = 0 ]
			then
			echo "[OK]"
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
	if [ ! -f "~/Library/Application\ Support/minecraft/versions/Wurst/Wurst-Bot/Wurst.jar " ]
		then
		cp ~/Library/Application\ Support/minecraft/versions/Wurst/Wurst.jar ~/Library/Application\ Support/minecraft/versions/Wurst/Wurst-Bot/Wurst.jar
		if [ $? = 0 ]
			then
			echo "[OK]"
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
	if [ ! -f "~/Library/Application\ Support/minecraft/versions/Wurst/Wurst-Bot/Wurst-Bot.jar" ]
		then
		rm ~/Library/Application\ Support/minecraft/versions/Wurst/Wurst-Bot/Wurst-Bot.jar
	fi
	mv ~/Library/Application\ Support/minecraft/versions/Wurst/Wurst-Bot/Wurst.jar ~/Library/Application\ Support/minecraft/versions/Wurst/Wurst-Bot/Wurst-Bot.jar
	echo "Cleaning Up.."
	sleep 3
	}

echo Starting Wurst-Bot launcher..
	Sleep 4
	clear
	vanillaJAR
	wurstJAR
cleanUP
java -jar ~/Library/Application\ Support/minecraft/versions/Wurst/Wurst-Bot/Wurst-Bot.jar
