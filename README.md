# 🛡️ DNS Enumeration Toolkit

A comprehensive collection of scripts for DNS reconnaissance and Zone Transfer (AXFR) vulnerability testing. This repository contains two implementations tailored for different environments.

## 📁 Project Structure

- **[/bash](./bash)**: Lightweight and fast implementation using the system `dig` tool. Best for quick scans without dependencies.
- **[/python](./python)**: Advanced version using the `dnspython` library. Features better error handling, custom resolvers, and detailed AXFR output.

## 🚀 Comparison

| Feature | Bash Version | Python Version |
|---------|--------------|----------------|
| Speed | ⚡ Extremely Fast | 🚀 Fast |
| Dependencies | `dnsutils` (dig) | `dnspython` |
| Error Handling | Basic | Advanced |
| AXFR Support | Yes | Yes |
| Output Format | Plain Text | Structured Text |

## 🛠️ Getting Started

Choose your preferred version by navigating to the corresponding directory and following the local instructions.
