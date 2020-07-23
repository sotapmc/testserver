@echo off
java --version 2>nul
java -v 2>nul
java -Xmx4G -Xms4G -jar ./paper-latest.jar nogui
pause