# tutorial https://help.ubuntu.com/community/TransmissionHowTo
# install client on server
sudo apt-get install transmission-cli transmission-common transmission-daemon
sudo service transmission-daemon stop
sudo nano /var/lib/transmission-daemon/info/settings.json
# disable auth
# rpc-authentication-required": false,
# "rpc-whitelist-enabled": false,
# "umask": 2,

sudo usermod -a -G debian-transmission user
sudo service transmission-daemon start

# commands to run services
# sudo service transmission-daemon start
# sudo service transmission-daemon stop
# sudo service transmission-daemon reload

# check status
sudo apt inatll transmission-remote
# list task
transmission-remote -l
# transmission-remote -tactive -l
# all status
transmission-remote -n 'transmission:transmission' -st
# start all
transmission-remote -n 'transmission:transmission' -s
# stop all
transmission-remote -n 'transmission:transmission' -S
# remove specific
transmission-remote -n 'transmission:transmission' -r -t 3

# download with command
transmission-remote -a "magnet:?xt=urn:btih:5LPYCL77DWPREAFKQ6VZHWXONNAPS3BT&dn=Spider-Man%20Into%20The%20Spider-Verse%20(2018)%20%5BBluRay%5D%20%5B1080p%5D%20%5BYTS.AM%5D&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce"
# transmission-cli "magnet:?xt=urn:btih:e249fe4dc957be4b4ce3ecaac280fdf1c71bc5bb&dn=ubuntu-mate-16.10-desktop-amd64.iso" -w ~/downloads

# torrents to mag https://nutbread.github.io/t2m/

sudo update-rc.d transmission-daemon defaults