#!/bin/bash

Printer="$1"
Doc="$2"

if [ "$Printer" == "settings" ]; then
	# Access settings
	sudo /etc/init.d/cupsd start
	firefox -private-window http://localhost:631
	sudo /etc/init.d/cupsd stop
elif  [ "$Printer" == "help" ]; then
	printf "Usage: \n\tPrintDefaults [Printer] [Document] \nAvailable printers: Home, ICeLib, ICeSid. \nDefault options: '-o fitplot -o ColorModel=KGray' \n"
elif  [ "$Printer" == "Home" ]; then
	sudo /etc/init.d/cupsd start
	lp -d HP_Deskjet_1510_series -o fitplot -o ColorModel=KGray "$Doc"
	echo "Press any key to stop cups (only after the task is finished):"
	read N
	sudo /etc/init.d/cupsd stop
elif  [ "$Printer" == "ICeLib" ]; then
	sudo /etc/init.d/cupsd start
	lp -d SamsungM4070FR -o fitplot -o ColorModel=KGray "$Doc"
	echo "Press any key to stop cups (only after the task is finished):"
	read N
	sudo /etc/init.d/cupsd stop
elif  [ "$Printer" == "ICeSid" ]; then
	sudo /etc/init.d/cupsd start
	lp -d Samsung_ML-3470_Sid -o fitplot -o ColorModel=KGray "$Doc"
	echo "Press any key to stop cups (only after the task is finished):"
	read N
	sudo /etc/init.d/cupsd stop
else 
	printf "Usage: \n\t PrintDefaults [Printer] [Document] \nTo see available printers and default options, use 'PrintDefaults help' \n"
fi
