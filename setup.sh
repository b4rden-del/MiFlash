#!/bin/bash
apt update -y
apt install termux-api -y
apt install curl -y
curl -s https://githubusercontent.com/nohajc/termux-adb/master/install.sh | bash
rm -f $PREFIX/bin/fastboot
cat << 'EOF' > $PREFIX/bin/fastboot
#!/data/data/com.termux/files/usr/bin/sh
exec termux-fastboot "$@"
EOF
chmod +x $PREFIX/bin/fastboot
apt install figlet -y
