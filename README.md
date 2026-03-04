# DNS-Enumeration
# DNS-Enumeration

![Bash](https://img.shields.io/badge/Language-Bash-green.svg)
![Security](https://img.shields.io/badge/Field-Pentesting-red.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

**DNS-Enumeration** is a lightweight Bash script designed to automate DNS reconnaissance. It systematically queries common DNS records and attempts an AXFR (Zone Transfer) to identify subdomains and internal infrastructure.



## 🚀 Features
- **Smart Filtering**: Displays only found records (no empty output noise).
- **Multi-Record Support**: Queries `A`, `AAAA`, `MX`, `NS`, `TXT`, `SPF`, `SOA`, `CNAME`, `PTR`, `HINFO`, and `ISDN`.
- **Targeted Scanning**: Supports querying specific nameservers (perfect for labs like Hack The Box or TryHackMe).
- **AXFR Automation**: Attempts Zone Transfers using TCP to ensure reliable results.

## 🛠️ Prerequisites
This script requires `dig` (part of the `dnsutils` package).
```bash
sudo apt update && sudo apt install dnsutils -y
```
```bash
git clone https://github.com/Szymon-Drazik/DNS-Enumeration
cd DNS-Enumeration
chmod +x dns-enum.sh
./dns-enum.sh <Domain> [@Nameserver]
