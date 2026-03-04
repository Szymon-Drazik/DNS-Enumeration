#!/bin/bash

DOMAIN=$1
TARGET=$2

if [ -z "$DOMAIN" ]; then
    echo "Usage: ./dns-enum.sh <domain> [@IP]"
    exit 1
fi

RECORDS=("A" "AAAA" "MX" "NS" "TXT" "SPF" "SOA" "CNAME" "PTR" "HINFO" "ISDN")

echo "--- ENUMERATION FOR: $DOMAIN ---"
[ -n "$TARGET" ] && echo "TARGET SERVER: $TARGET" || echo "TARGET: System default DNS"

for REC in "${RECORDS[@]}"; do
    RESULT=$(dig $REC $DOMAIN $TARGET +short)

    if [ -n "$RESULT" ]; then
        echo -e "\n[+] FOUND RECORD: $REC"
        echo "$RESULT"
    fi
done

echo -e "\n[*] ATTEMPTING ZONE TRANSFER (AXFR)..."
AXFR_RESULT=$(dig axfr $DOMAIN $TARGET +tcp +time=3)

if [[ "$AXFR_RESULT" == *"; Transfer failed."* ]] || [[ -z "$AXFR_RESULT" ]]; then
    echo "[-] AXFR: Transfer failed or no response."
else
    echo "[!] AXFR SUCCESS!"
    echo "$AXFR_RESULT"
fi
