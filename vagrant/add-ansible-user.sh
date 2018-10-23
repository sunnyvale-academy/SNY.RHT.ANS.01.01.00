mkdir -p /home/ansible/.ssh
useradd -d /home/ansible -s /bin/bash -c "Ansible user" ansible 
chown -R ansible:ansible /home/ansible
echo "ansible ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible
