echo "[~] Downloading neccessary packages"
apk add --update wget python3 nano
echo "[+] Download successful!"

echo "[~] Setting public key to authorized keys..."
cat /tmp/$(hostname).pub >> /home/vagrant/.ssh/authorized_keys
echo "[+] Successfully set public key!"

echo "[~] Cleaning up..."
rm /tmp/$(hostname).pub
echo "[+] Successfully cleaned up!"