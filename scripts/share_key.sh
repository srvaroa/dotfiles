#!/bin/bash -x
# usage: $0 key recipient
key=$1
key_nopw="$1.nopw.pem"
key_encr="$1.gpg"
recipient=$2

openssl rsa -in $key -out $key_nopw
gpg --output $key_encr --encrypt --recipient $recipient $key_encr
