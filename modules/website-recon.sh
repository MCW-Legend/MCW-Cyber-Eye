#!/bin/bash
clear
echo "🌐 Website Recon"
read -p "Enter website URL (e.g., example.com): " web
echo "[*] HTTP Headers:"
curl -I http://$web | tee logs/recon_$web.txt
echo "[*] DNS Lookup:"
nslookup $web | tee -a logs/recon_$web.txt
echo "Recon complete. Log saved to logs/recon_$web.txt"
