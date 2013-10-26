#!/bin/bash

# https://netbank.esunbank.com.tw/webatm/Q&A_016.htm
# https://eatm.firstbank.com.tw/lio1000s2#Linux
# https://paytax.nat.gov.tw/Download/update/Linux.html
# https://paytax.nat.gov.tw/Download/Everyone/FISC_Env_SetupWinUbuntu.htm

sudo apt-get install -y pcscd pcsc-tools libccid libpcsc-perl


echo "Please insert Smart Card Reader. Ctrl+Shift+C to Exit."
pcsc_scan
