#!/bin/bash
curl -L https://mologie.de/~oliver/mologie.github.io/nxboot/bin/nxboot -o "$( dirname "$0" )"/nxboot && chmod +x "$( dirname "$0" )"/nxboot
exec "$( dirname "$0" )/nxboot" "$( dirname "$0" )"/payload.bin