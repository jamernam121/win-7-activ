sudo su
apt update && apt install qemu-kvm -y
qemu-img create -f raw Win10.img 20G
wget -O- --no-check-certificate https://download853.mediafire.com/75wzlpkdn4xgNkv78PMtMu17yLhNQ59BxtjovJNJFu5jm4JuAU6xSMAwyVDNg38m2shku9paLZ04I7NRlPfX1asdmROi_XOzbAw4xfyjWp4vmtCkBLgQqFL3dpYX0ZDi37WHhbf1SPpWM7etRSB7OsR67c84OFQeISK_Atu-WP8Afeg/ky31k6tm9r044cn/Win10ver1909.img.gz | gunzip | dd of=Win10.img
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok -y
ngrok config add-authtoken 1zix6Xh9BPBRvIrrY85S2L3djWY_4ZzHtRzfJ2XnbyBJGCWMp
ngrok tcp 3389
tạo tab mới
sudo su
qemu-img resize Win10.img 30G
clear
qemu-system-x86_64 \
-net nic -net user,hostfwd=tcp::3389-:3389 \
-m 4G -smp cores=4 \
-cpu max \
-enable-kvm \
-boot order=d \
-drive file=Win10.img,format=raw,if=virtio \
-device usb-ehci,id=usb,bus=pci.0,addr=0x4 \
-device usb-tablet \
-vnc :0 -vga virtio
