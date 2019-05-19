#!/system/bin/sh
iptables -t nat -A OUTPUT -o tun0 -p tcp --dport 80 -j REDIRECT --to 8888
iptables -t nat -A OUTPUT -o tun0 -p tcp --dport 443 -j REDIRECT --to 8888
iptables -t nat -A OUTPUT -o tun0 -p udp --dport 53 -j REDIRECT --to 8889
