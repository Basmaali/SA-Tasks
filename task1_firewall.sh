#!/bin/bash
iptables -A INPUT -m state --state NEW -p tcp -s 10.0.10.128 --dport 22 -j ACCEPT
iptables -A INPUT -m state --state NEW -p tcp -j DROP
iptables-save > /etc/iptables/rules.v4
#10.0.10.128 i my test IP
