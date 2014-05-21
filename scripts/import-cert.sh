#!/bin/sh
#
# usage:  import-cert.sh remote.host.name [port]
# http://blog.avirtualhome.com/adding-ssl-certificates-to-google-chrome-linux-ubuntu/

if [ ! -e $HOME/.pki/nssdb ]
then
echo 「===========================
No Database found. Creating one…
=================================」
mkdir -p $HOME/.pki/nssdb
cd $HOME/.pki/nssdb
certutil -N -d sql:.
fi

REMHOST=$1

if [ -z $REMHOST ]
then
certutil -L -d sql:$HOME/.pki/nssdb
exit 0
fi
# certutil -d sql:$HOME/.pki/nssdb -A -t TC -n "CAcert.org" -i cacert-root.crt 
# certutil -d sql:$HOME/.pki/nssdb -A -t TC -n "CAcert.org Class 3" -i cacert-class3.crt

REMPORT=${2:-443}
echo ${REMHOST}:${REMPORT}
echo  'certutil -d sql:$HOME/.pki/nssdb -A -t TC -n "$REMHOST" -i $REMHOST'
exec 6>&1
exec > $REMHOST
echo | openssl s_client -connect ${REMHOST}:${REMPORT} 2>&1 |sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p'
certutil -d sql:$HOME/.pki/nssdb -A -t TC -n "$REMHOST" -i $REMHOST 
exec 1>&6 6>&-

