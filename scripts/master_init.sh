echo "[~] Downloading neccessary packages"
apk add --update coreutils wget python3 ansible nano
echo "[+] Download successful!"

echo "[~] Changing permission for keys"
chmod 400 /home/vagrant/ansible/keys/*
echo "[+] Successfully changed permissions!"