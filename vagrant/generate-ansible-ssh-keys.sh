if [ ! -f "/home/ansible/.ssh/id_rsa" ]; then
  ssh-keygen -t rsa -N "" -f /home/ansible/.ssh/id_rsa
fi
cp /home/ansible/.ssh/id_rsa.pub /vagrant/control.pub
cat << 'SSHEOF' > /home/ansible/.ssh/config
Host *
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
SSHEOF

chown -R ansible:ansible /home/ansible/.ssh/
