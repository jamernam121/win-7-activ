echo "Đang tải file xuống - Download windows files"
curl -L -o t300k.qcow2 https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.0.9/providers/qemu/unknown/vagrant.box
echo "Download ngrok"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &
echo Downloading File From toigamo.blogspot.com
apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo "Wait"
echo "Starting Windows"
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Ctrl+C để copy - Ctrl+C To Copy"
echo Username: akuh
echo Password: Akuh.Net
echo "Chờ 1-2 phút để hoàn tất - Wait 1-2 minute to finish bot"
echo "Vui lòng không tắt cửa sổ này - Dont Close This Tab"
echo "Please support toigamo.blogspot.com thank you"
qemu-system-x86_64 -vnc :0 -vga std -hda t300k.qcow2  -smp cores=1 -m 6000M -machine usb=on -device usb-tablet
sleep 43200
