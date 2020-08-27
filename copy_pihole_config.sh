NOW=$(date +"%m-%d-%y")
echo $NOW
tar -czvf piconf_$NOW.tar.gz /media/exfat/pihole 
sshpass -p "transfer" scp -v /media/exfat/scripts/piconf_$NOW.tar.gz transfer@192.168.178.22:/
rm -f piconf_$NOW.tar.gz