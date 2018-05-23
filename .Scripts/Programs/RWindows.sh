#!/bin/sh
SPICE_PORT=5924
qemu-system-x86_64 -enable-kvm -daemonize \
    -cpu host \
    -drive file=/home/malfatti/QemuMachines/RWindowsXP/RWindowsXP.img,if=virtio \
	-name RWindowsXP \
    -net nic -net user,hostname=RWindowsXP \
    -m 3072 \
    -vga qxl \
    -spice port=${SPICE_PORT},disable-ticketing \
    -device virtio-serial \
    -chardev spicevmc,id=vdagent,name=vdagent \
    -device virtserialport,chardev=vdagent,name=com.redhat.spice.0 \
    "$@"
exec spicy --title RWindowsXP 127.0.0.1 -p ${SPICE_PORT}

