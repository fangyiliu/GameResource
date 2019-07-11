@echo off
title Block Beyond Compare
color 1F
echo.
echo This batch file adds 1 entry to your hosts file, preventing Beyond Compare
echo from connecting to the internet
echo.
echo It will then set the attributes of the hosts file to read-only + hidden
echo and clear your DNS cache
echo.
echo Entry that will be added:
echo.
echo 127.0.0.1 www.scootersoftware.com scootersoftware.com
echo.
pause
attrib -r -h C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 www.scootersoftware.com scootersoftware.com >> C:\Windows\System32\drivers\etc\hosts
attrib +r +h C:\Windows\System32\drivers\etc\hosts
ipconfig /flushdns