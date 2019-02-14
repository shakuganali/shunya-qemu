#!/bin/bash

# Variable Initilization

DIR=$( pwd )
RFS=0

CPUS=$( nproc )

if [ $# -eq 0 ]; then
echo "Usage: qemu-shunya-arm.sh -h for help"
exit 0
fi

while [[ $# -gt 0 ]]
do
key="$1"	
	case $key in
		-h)
		echo ""
		echo "Shunya QEMU"
		echo "-------------------------"
		echo "Description"
		echo "        This is a simple script which let you emulate Shunya Images."
		echo "        You can also choose to emulate Shunya console image or Shunya "
		echo "	      desktop image  "
		echo ""
		echo "Use -c or --console to try Shunya Console Image"
		echo "Usage: ./qemu-shunya-arm.sh -c or ./qemu-shunya-arm.sh --console" 
		echo ""
		echo "Use -d or --desktop to try Shunya Desktop Image"
		echo "Usage: ./qemu-shunya-arm.sh -d or ./qemu-shunya-arm.sh --desktop"
		echo ""
		exit 0
		;;
		-c|--console)
		RFS=shunya-console-image
		break
		;;
		-d|--desktop)
		RFS=shunya-desktop-image
		break
		;;
		*)
		echo "Unknown option. Use -h for help"
		exit 0
		;;
	esac
done

${DIR}/binaries/qemu-system-aarch64 -device virtio-net-device,netdev=net0,mac=52:54:00:12:34:02 -netdev tap,id=net0,ifname=tap0,script=no,downscript=no -drive id=disk0,file=${DIR}/${RFS}-qemuarm.rootfs.ext4,if=none,format=raw -device virtio-blk-device,drive=disk0 -show-cursor -device virtio-rng-pci -monitor null  -machine versatilepb -cpu arm1176 -smp ${CPUS} -m 4096 -serial mon:vc -serial null -kernel ${DIR}/kernel-shunya-arm64.bin -dtb ${DIR}/dtb-shunya-arm.dtb -append 'root=/dev/vda rw mem=4096M ip=192.168.7.2::192.168.7.1:255.255.255.0 console=ttyAMA0,115200'












