# Change the size of the swap file
# Set the count number on line 7 to the size in GiB you wid=sh to resize the wap file to

swapon --show  # see what swap files you have active
sudo swapoff /swapfile  # disable /swapfile
# Create a new swap file in its place (could lock up your computer for a few minutes if using a spinning Hard Disk Drive [HDD], so be patient)
sudo dd if=/dev/zero of=/swapfile count=19 bs=1G
sudo mkswap /swapfile  # turn this new file into swap space
sudo chmod 0600 /swapfile  # only let root read from/write to it, for security
sudo swapon /swapfile  # enable it
swapon --show  # ensure it is now active
