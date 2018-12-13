if [ "$(uname -m | grep '64')" != "" ]; then
echo x64 operating system.
#sudo dpkg --add-architecture i386
#sudo apt-get update
sudo apt-get install libpng-dev zlib1g-dev sed git wget make gcc lib32stdc++6 lib32gcc1 lib32z1
else
echo x86 operating system.
sudo apt-get install libpng-dev zlib1g-dev sed git wget make gcc
fi
