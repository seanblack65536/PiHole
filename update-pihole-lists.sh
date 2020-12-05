curl -Ss https://v.firebog.net/hosts/lists.php?type=nocross -o /etc/pihole/adlists.list
curl -Ss https://raw.githubusercontent.com/Seanblack65536/PiHole/master/blacklist_urls.txt -o /etc/pihole/blacklist_urls.txt
curl -sS https://raw.githubusercontent.com/anudeepND/whitelist/master/domains/whitelist.txt -o /etc/pihole/whitelist.txt
curl -Ss https://raw.githubusercontent.com/Seanblack65536/PiHole/master/whitelist.txt -o /etc/pihole/whitelist2.txt
cat /etc/pihole/whitelist2.txt >>/etc/pihole/whitelist.txt
cat /etc/pihole/blacklist_urls.txt >>/etc/pihole/adlists.list

# update PiHole
pihole -g
