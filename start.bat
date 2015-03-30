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
java -jar Wurst-Bot.jar
pause