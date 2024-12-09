#Script: Droidcam Install script and load kernel module

if command -v paru >/dev/null 2>&1; then
    yay -S droidcam
    sudo modprobe v4l2loopback
elif command -v yay >/dev/null 2>&1; then
    paru -S droidcam
    sudo modprobe v4l2loopback
else
    echo "Neither yay nor paru is installed. Please install one of them and try again."
    exit 1
fi

