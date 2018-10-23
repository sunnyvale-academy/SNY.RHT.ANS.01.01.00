rm -rf /home/ansible/.ssh
mkdir -p /home/ansible/.ssh
groupadd -f -g 1002 ansible
useradd -d /home/ansible -s /bin/bash -c "Ansible user" -u 1002 -g 1002 ansible 
chown -R ansible:ansible /home/ansible
echo "ansible ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible
