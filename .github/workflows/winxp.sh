sudo apt update -y
sudo apt install wget curl -y
sudo apt install qemu-kvm
wget -O ngrok.tgz https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -zxvf ngrok.tgz
read -p "Paste authtoken here (Copy and Ctrl+V to paste then press Enter): " CRP
./ngrok authtoken $CRP
./ngrok http 8006 --region ap &>/dev/null &
sudo mkdir /isos/
sudo wget -O /isos/a.iso "https://computernewb.com/isos/windows/Win10_22H2_English_x64.iso" &>/dev/null &
 while ps axg | grep -vw grep | grep -w wget > /dev/null; do sleep 1; done
 sudo wget -O /isos/driver.iso https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.240-1/virtio-win-0.1.240.iso &>/dev/null &
while ps axg | grep -vw grep | grep -w wget > /dev/null; do sleep 1; done
 wget https://raw.githubusercontent.com/jamernam121/t300k/main/compose.yaml
echo "thanh cong, ket noi bang port 8006 o trinh duyet Chrome"
sudo apt-get install docker-compose-plugin
sudo docker compose up
