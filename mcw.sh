#!/bin/bash
clear
figlet "MCW Cyber Eye" | lolcat
echo "☠️ Created by Hacker Asad - Muslim Cyber Warriors ☠️"
echo "--------------------------------------------------"
echo "[1] IP Tracker"
echo "[2] Port Scanner"
echo "[3] Website Recon"
echo "[4] SQL Vulnerability Scanner"
echo "[5] XSS Payload Tester"
echo "[0] Exit"
echo "--------------------------------------------------"
read -p "Choose Option: " opt

case $opt in
1)
    clear
    echo "🌐 IP Tracker"
    read -p "Enter IP address or domain: " ip
    echo "[*] Gathering info for $ip..."
    curl -s ipinfo.io/$ip | tee logs/ip_$ip.txt
    echo "[+] Log saved to logs/ip_$ip.txt"
    ;;
2)
    clear
    echo "🔍 Port Scanner"
    read -p "Enter target IP/domain: " target
    read -p "Enter port range (e.g., 1-1000): " ports
    echo "[*] Scanning $target ports $ports..."
    nmap -p$ports $target | tee logs/portscan_$target.txt
    echo "[+] Log saved to logs/portscan_$target.txt"
    ;;
3)
    clear
    echo "🌐 Website Recon"
    read -p "Enter website URL (e.g., example.com): " web
    mkdir -p logs
    echo "[*] HTTP Headers:" | tee logs/recon_$web.txt
    curl -I http://$web | tee -a logs/recon_$web.txt
    echo "[*] DNS Lookup:" | tee -a logs/recon_$web.txt
    nslookup $web | tee -a logs/recon_$web.txt
    echo "[+] Recon complete. Log saved to logs/recon_$web.txt"
    ;;
4)
    clear
    echo "💉 SQL Vulnerability Scanner"
    read -p "Enter URL (with query parameter): " sqlurl
    echo "[*] Testing SQL Injection on $sqlurl..."
    sqlmap -u "$sqlurl" --batch --output-dir=logs/sqlmap
    echo "[+] Scan complete. Check logs/sqlmap directory."
    ;;
5)
    clear
    echo "⚠️ XSS Payload Tester"
    read -p "Enter URL (with parameter): " xssurl
    echo "[*] Testing XSS on $xssurl..."
    curl "$xssurl%3Cscript%3Ealert('XSS')%3C/script%3E" -I
    echo "[+] XSS test complete. Check browser response manually."
    ;;
0)
    echo "Exiting..."
    exit
    ;;
*)
    echo "Invalid Option!"
    ;;
esac
