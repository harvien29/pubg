#!/data/data/com.termux/files/usr/bin/bash env

# Update and upgrade
pkg up -y && pkg upgrade -y

# Switch permissive
su -c 'setenforce 0'

# Install dependencies
time apt install ruby pv toilet tsu git wget screenfetch figlet -y

# Install LOLCat via Ruby's package manager
gem install lolcat

# Install Sudo
wget https://raw.githubusercontent.com/harvien29/Source/master/sudo > /dev/null 2>&1
pkg install ncurses-utils
cat sudo > /data/data/com.termux/files/usr/bin/sudo
chmod 700 /data/data/com.termux/files/usr/bin/sudo

# Remove existing files
rm -rf Harvieno
rm -rf sudo

# Fetch the script and setup
wget https://raw.githubusercontent.com/harvien29/pubg/master/Harvieno
tsu chmod 777 Harvieno
tsu ./Harvieno
