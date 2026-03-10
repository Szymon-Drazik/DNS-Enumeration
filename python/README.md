
# DNS-Enumeration (Python Edition) 🐍

![Language](https://img.shields.io/badge/Language-Python-blue) ![Field](https://img.shields.io/badge/Field-Pentesting-red)

**DNS-Enumeration (Python)** is a robust script leveraging the `dnspython` library to perform deep DNS reconnaissance. It is designed to handle complex queries and provides a stable platform for identifying subdomains and misconfigured name servers.

## 🚀 Features

- **Advanced Record Scanning**: Queries `A`, `AAAA`, `MX`, `NS`, `TXT`, `SPF`, `SOA`, `CNAME`, `PTR`, `HINFO`, and `ISDN`.
- **Custom Resolver**: Seamlessly switch between default system DNS or a specific target nameserver.
- **Robust AXFR Implementation**: Uses `dns.zone` and `dns.query` for reliable Zone Transfers.
- **Exception Handling**: Intelligent error catching to ensure the script continues even if specific records are missing.

## 🛠️ Prerequisites

This script requires Python 3 and the `dnspython` library.

```bash
pip install -r requirements.txt
```
## 📦 Installation & Setup
Clone the repository, enter the directory, and grant execution permissions:
```bash
git clone https://github.com/Szymon-Drazik/DNS-Enumeration
cd DNS-Enumeration/bash
chmod +x dns-enum.sh
```
## 📖 Usage
```bash
./dns-enum.sh <Domain> [@Nameserver]
```
