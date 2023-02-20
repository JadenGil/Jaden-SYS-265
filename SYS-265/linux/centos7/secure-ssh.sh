#secure-ssh.sh
#author jaden.gilmond
#creates a new ssh user using $1 parameter
read -p "Add User: " username
useradd -m -d /home/"${username}" -s /bin/bash "${username}"
mkdir /home/"${username}"/.ssh
cp /home/jaden/Jaden-SYS-265/SYS-265/linux/public-keys/id_rsa.pub /home/"${username}"/.ssh/authorized_keys
chmod 700 /home/"${username}"/.ssh
chmod 600 /home/"${username}"/.ssh/authorized_keys
chown -R "${username}"|"${username}" /home/"${username}"/.ssh
#adds a public key from local repo or curled from remote repo
#removes root ability to ssh in
echo "ALL YOUR CODE GOES HERE
