#!/bin/bash
iptables -A INPUT -p tcp -m multiport --sports 53,22,80,443 -j ACCEPT
iptables -A INPUT -p tcp -j DROP
iptables -A OUTPUT -p tcp -m multiport --dports 53,22,80,443 -j ACCEPT
iptables -A OUTPUT -p tcp -j DROP
iptables-save > /etc/iptables/rules.v4
