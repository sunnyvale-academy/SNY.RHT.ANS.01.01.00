. /vagrant/scripts/.env
sudo -u ansible rm -rf /home/ansible/git
sudo -u ansible mkdir /home/ansible/git
sudo -u ansible -H git clone https://github.com/$GIT_REPO_OWNER/$GIT_REPO_NAME.git /usr/src/git_repo
sudo -u ansible ln -s /usr/src/git_repo /home/ansible/git/SNY.RHT.ANS.01.01.00
