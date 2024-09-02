wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
unzip hngrok-v3-stable-linux-amd64.tgz > /dev/null 2>&1
read -p "Paste authtoken here (Copy and Ctrl+V to paste then press Enter): " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &
echo Please wait for installing...
sudo apt update -y > /dev/null 2>&1
echo "Installing QEMU (2-3m)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo Downloading Windows Disk...
curl -L -o litexp.qcow2 https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.1.0/providers/qemu.box
sudo qemu-system-x86_64 -vnc :0 -hda litexp.qcow2  -smp cores=4 -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1
