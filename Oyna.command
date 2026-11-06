#!/bin/bash
# Pir Pir Satranc - tarayicida baslatir (cift tiklayin).
cd "$(dirname "$0")"

# Bos bir port bul
PORT=8123
while lsof -i tcp:$PORT >/dev/null 2>&1; do PORT=$((PORT+1)); done

echo "=============================================="
echo "  PIR PIR SATRANC baslatiliyor..."
echo "  Adres: http://localhost:$PORT"
echo "  Oyunu kapatmak icin bu pencereyi kapatin."
echo "=============================================="

( sleep 1.5; open "http://localhost:$PORT" ) &
exec python3 -m http.server $PORT
