# https://www.andrewhoog.com/post/howto-setup-a-private-git-server-on-ubuntu-18.04/
# create from server
# add keys to ssh
# vim ~/.ssh/authorized_keys
project_name=dummy
cd /home/git

sudo mkdir $project_name

cd $project_name && sudo git init --bare && cd ..

sudo chown -R git.git ios-backup-extractor.git/

# clone from client
git clone git@13.70.93.198:$project_name
# git remote add origin git@<IPADDRESS>:<repo-name>.git