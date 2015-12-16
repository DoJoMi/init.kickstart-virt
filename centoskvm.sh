virt-install \
--name=centos \
--ram=2048 \
--vcpus=1 \
--nographics \
--os-type=linux \
--os-variant=rhel7 \
--location=http://mirror.easyname.at/centos/7/os/x86_64/  \
--accelerate \
--hvm \
--disk path=/var/lib/libvirt/images/centos.qcow2,format=qcow2,bus=virtio,cache=none \
--extra-args="ks=https://raw.githubusercontent.com/DoJoMi/ks_virt/master/ks.cfg text console=tty0 console=ttyS0,115200n8 serial"
--noreboot \
--force