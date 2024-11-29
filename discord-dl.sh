# Script:  discord-dl.sh (0.0.1-alpha)
# License: MIT
# Edited:  26-02-23

if [ -d "/opt/Discord" ]; then
    sudo rm -rf /opt/Discord
fi

if [ -L "/bin/discord" ]; then
    sudo rm -f /bin/discord
fi

curl -Lfo "Discord.tar.gz" "https://discord.com/api/download?platform=linux&format=tar.gz"
tar xzvf Discord.tar.gz
sudo mv Discord /opt
sudo ln -s /opt/Discord/Discord /bin/discord
rm Discord.tar.gz
