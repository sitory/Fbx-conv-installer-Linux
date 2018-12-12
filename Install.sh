cd "${0%/*}"
if [ "$(uname -m | grep '64')" != "" ]; then
echo x64 operating system.
./5-Install-x64.sh
else
echo x86 operating system.
./5-Install-x86.sh
fi
