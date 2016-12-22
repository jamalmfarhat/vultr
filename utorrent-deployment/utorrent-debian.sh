cd /
mkdir data
mkdir /data/DOWNLOADS
cd /data
wgethttp://download.ap.bittorrent.com/track/beta/endpoint/utserver/os/linux-x64-debian-7-0
mv linux-x64-debian-7-0 utserver.tar.gz
tar -xvzf utserver.tar.gz -C /opt/
chmod -R 755 /opt/utorrent-server-alpha-v3_3/
ln -s /opt/utorrent-server-alpha-v3_3/utserver /usr/bin/utserver
cd /data/DOWNLOADS
echo "utserver -settingspath /opt/utorrent-server-alpha-v3_3/" > startUtorrent.sh
chmod 777 startUtorrent.sh
/data/startUtorrent.sh &

#html
apt-get install apache2
cd /var/www/html
ln -sfn /data/DOWNLOADS downloads
