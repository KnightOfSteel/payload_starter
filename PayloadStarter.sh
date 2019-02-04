#!/bin/bash
if [ ! -f "$( dirname "$0" )/nxboot" ]; then
curl -L https://mologie.de/~oliver/mologie.github.io/nxboot/bin/nxboot -o "$( dirname "$0" )"/nxboot && chmod +x "$( dirname "$0" )"/nxboot
"$( dirname "$0" )/nxboot" "$( dirname "$0" )"/payload.bin
else
curl https://mologie.de/~oliver/mologie.github.io/nxboot/bin/nxboot -o "$( dirname "$0" )"/nxboot_temp
if [ -n "$(cmp -s $( dirname "$0" )/nxboot_temp $( dirname "$0" )/nxboot)"] 
then
rm -f "$( dirname "$0" )"/nxboot
mv "$( dirname "$0" )"/nxboot_temp "$( dirname "$0" )"/nxboot
chmod +x "$( dirname "$0" )"/nxboot
exec "$( dirname "$0" )/nxboot" "$( dirname "$0" )"/payload.bin
else
rm -f "$( dirname "$0" )"/nxboot_temp
exec "$( dirname "$0" )/nxboot" "$( dirname "$0" )"/payload.bin
fi
fi