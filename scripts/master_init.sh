echo "[~] Downloading neccessary packages"
apk add --update coreutils wget python3 ansible nano jenkins
echo "[+] Download successful!"

echo "[~] Changing permission for keys"
chmod 400 /home/vagrant/ansible/keys/*
echo "[+] Successfully changed permissions!"

echo "[~] Starting Jenkins"
export CASC_JENKINS_CONFIG=/home/vagrant/jenkins/jenkins-as-code.xml
sudo rc-service jenkins start
echo "[+] Started Jenkins"

echo "[~] Creating user"
mkdir /var/lib/jenkins/users/lojo
cp /home/vagrant/jenkins/users/config.xml /var/lib/jenkins/users/lojo/config.xml
echo "[+] User created successfully"