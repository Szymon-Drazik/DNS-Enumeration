#!/usr/bin/env python3

import sys
import dns.resolver
import dns.query
import dns.zone

Records = ["A", "AAAA", "MX", "NS", "TXT", "SPF", "SOA", "CNAME", "PTR", "HINFO", "ISDN"]

if len(sys.argv) < 2:
    print("Usage: python3 dns-enum.py <domain> [nameserver]")
    sys.exit(1)
elif len(sys.argv) < 3:
    Domain = sys.argv[1]
    Target = ""
else:
    Domain = sys.argv[1]
    Target = sys.argv[2]

my_resolver = dns.resolver.Resolver()

if Target:
    my_resolver.nameservers = [Target]

for rec in Records:
    try:
        answers = my_resolver.resolve(Domain, rec)
        for rdata in answers:
            print(f"[+] Found {rec}: {rdata}")
    except:
        pass

print("\n[*] Attempting Zone Transfer (AXFR)...")
try:
    zone = dns.zone.from_xfr(dns.query.xfr(Target, Domain))
    for name, node in zone.nodes.items():
        for rdataset in node.rdatasets:
            print(f"[!] AXFR SUCCESS: {name}.{Domain} -> {rdataset}")
except:
    print("[-] AXFR: Transfer failed or not allowed.")
