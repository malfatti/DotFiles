Dev=$1
Here=`pwd`

cd
sudo mount "$Dev"4 .MountPoint01/
sudo mount "$Dev"2 .MountPoint01/boot/efi/
sudo mount --types proc /proc /home/malfatti/.MountPoint01/proc/
sudo mount --rbind /sys /home/malfatti/.MountPoint01/sys/
sudo mount --rbind /dev /home/malfatti/.MountPoint01/dev/
sudo cp --dereference /etc/resolv.conf .MountPoint01/etc/
sudo chroot /home/malfatti/.MountPoint01/ /bin/bash

sudo umount -l /home/malfatti/.MountPoint01/dev{/shm,/pts,}
sudo umount -R /home/malfatti/.MountPoint01/
cd $Here
