echo "[~] Downloading neccessary packages"
apk add --update coreutils wget python3 ansible nano
echo "[+] Download successful!"

echo "[~] Changing permission for keys"
chmod 400 /home/vagrant/ansible/keys/*
echo "[+] Successfully changed permissions!"

echo "[~] Setting Ansible config path"
export ANSIBLE_CONFIG=/home/vagrant/ansible/ansible.cfg
echo "[+] Successfully set the ansible config"