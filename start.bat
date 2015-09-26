@echo off
echo Starting Wurst-Bot launcher
:vanillaJAR
if not exist Wurst-Bot_lib\1.8.jar (
if exist ..\..\1.8\1.8.jar (
xcopy ..\..\1.8\1.8.jar Wurst-Bot_lib /Y
) else (
echo ERROR! Vanilla JAR file could not be found.
echo Please put a copy of the Minecraft 1.8 JAR file into the WurstBot_lib folder and continue.
pause
cls
goto vanillaJAR
)
)
:wurstJAR
if exist ..\Wurst.jar (
xcopy ..\Wurst.jar . /Y
) else (
echo ERROR! Wurst Client JAR file could not be found.
echo Please put a copy of the Wurst Client JAR file ^(v1.11 or higher^) into the .minecraft\versions\Wurst folder folder and continue.
pause
cls
goto wurstJAR
)
del Wurst-Bot.jar
ren Wurst.jar Wurst-Bot.jar
cls
java -classpath Wurst-Bot.jar;Wurst-Bot_lib/slick.jar;Wurst-Bot_lib/gson-2.2.4.jar;Wurst-Bot_lib/guava-17.0.jar;Wurst-Bot_lib/icu4j-core-mojang-51.2.jar;Wurst-Bot_lib/authlib-1.5.17.jar;Wurst-Bot_lib/realms-1.5.5.jar;Wurst-Bot_lib/codecjorbis-20101023.jar;Wurst-Bot_lib/codecwav-20101023.jar;Wurst-Bot_lib/libraryjavasound-20101123.jar;Wurst-Bot_lib/librarylwjglopenal-20100824.jar;Wurst-Bot_lib/soundsystem-20120107.jar;Wurst-Bot_lib/commons-codec-1.9.jar;Wurst-Bot_lib/commons-io-2.4.jar;Wurst-Bot_lib/commons-logging-1.1.3.jar;Wurst-Bot_lib/netty-all-4.0.15.Final.jar;Wurst-Bot_lib/vecmath-1.5.2.jar;Wurst-Bot_lib/jinput-2.0.5.jar;Wurst-Bot_lib/jinput-platform-2.0.5-natives-windows.jar;Wurst-Bot_lib/jutils-1.0.0.jar;Wurst-Bot_lib/jopt-simple-4.6.jar;Wurst-Bot_lib/trove4j-3.0.3.jar;Wurst-Bot_lib/commons-compress-1.8.1.jar;Wurst-Bot_lib/commons-lang3-3.3.2.jar;Wurst-Bot_lib/httpclient-4.3.3.jar;Wurst-Bot_lib/httpcore-4.3.2.jar;Wurst-Bot_lib/log4j-api-2.0-beta9.jar;Wurst-Bot_lib/log4j-core-2.0-beta9.jar;Wurst-Bot_lib/lwjgl-2.9.1.jar;Wurst-Bot_lib/lwjgl_util-2.9.1.jar;Wurst-Bot_lib/lwjgl-platform-2.9.1-natives-windows.jar;Wurst-Bot_lib/twitch-6.5.jar;Wurst-Bot_lib/twitch-external-platform-4.5-natives-windows-64.jar;Wurst-Bot_lib/twitch-platform-6.5-natives-windows-64.jar;Wurst-Bot_lib/1.8.jar tk.wurst_client.bot.WurstBot
pause
