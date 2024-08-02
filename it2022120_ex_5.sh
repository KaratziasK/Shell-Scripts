#!/bin/bash

if [ $# -ne 1 ]; then
    echo "please give a website as argument."
    echo "$0 [website]"
    exit 1
fi

web=$1

expiration_date=$(echo | openssl s_client -servername "$web" -connect "$web":443 2>/dev/null | openssl x509 -noout -dates | grep "notAfter" | awk -F'=' '{print $2}')

if [ -z "$expiration_date" ]; then
    echo "Unable to get date of ssl expires for website $web."
    exit 1
fi

expiration_epoch=$(date -d "$expiration_date" +%s)
current_epoch=$(date +%s)

if [ "$current_epoch" -ge "$expiration_epoch" ]; then
    echo "SSL has expired for website $web Date: $expiration_date."
else
    echo "Date of website $web ssl expires is $expiration_date."
fi
