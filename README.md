# ☠️ MCW Cyber Eye v1.0 – Threat Intelligence Weapon

**Author:** Hacker Asad  
**Group:** Muslim Cyber Warriors (MCW)  
**Tool Type:** Termux-based Pentesting Framework  
**Version:** 1.0  
**License:** 🚫 Educational Use Only

---

## ⚔️ ABOUT THIS TOOL

`MCW Cyber Eye` is a powerful Termux-based real-world pentesting tool designed for:

- IP Tracking 🌐  
- Port Scanning 🔍  
- Website Reconnaissance 🛰️  
- SQL Injection Testing 💉  
- XSS Payload Testing ⚠️  
- Logging All Results Locally 📁  

---

## 📦 FEATURES

| Option | Module            | Description                                      |
|--------|-------------------|--------------------------------------------------|
| [1]    | IP Tracker         | Tracks geolocation and ISP info of any IP       |
| [2]    | Port Scanner       | Scans open ports using `nmap`                   |
| [3]    | Website Recon      | Grabs HTTP headers and DNS info                 |
| [4]    | SQLi Scanner       | Uses `sqlmap` to detect SQL vulnerabilities     |
| [5]    | XSS Tester         | Sends basic payload to test for XSS             |

---

## 📥 INSTALLATION

```bash
pkg update && pkg upgrade
pkg install git python curl wget nmap php
pip install requests
git clone https://github.com/MCW-Legend/MCW-Cyber-Eye.git
cd MCW-Cyber-Eye
bash mcw.sh
