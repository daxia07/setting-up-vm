# https://linuxize.com/post/how-to-install-and-configure-samba-on-ubuntu-18-04/

sudo useradd -M -d /samba/mingl -s /usr/sbin/nologin -G sambashare mingl

sudo mkdir /samba/mingl
sudo chown mingl:sambashare /samba/mingl

sudo chmod 2770 /samba/mingl

sudo smbpasswd -a mingl

sudo smbpasswd -e mingl

sudo useradd -M -d /samba/users -s /usr/sbin/nologin -G sambashare sadmin

sudo smbpasswd -a sadmin

sudo smbpasswd -e sadmin

sudo mkdir /samba/users

sudo chown sadmin:sambashare /samba/users

sudo chmod 2770 /samba/users