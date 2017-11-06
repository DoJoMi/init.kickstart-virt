**disk-creation**

```
# create the disk before run the previous command
qemu-img create -f qcow2 -o preallocation=metadata /var/lib/libvirt/images/centos.qcow2 11G 
````

**info**


```
#bridge can be changed inside the .cfg files
--network bridge=kvm
to
--network bridge=virbr0 \

if nothing is defined, the default address will be configured virbr0 --> f.e 192.168.122.*
```

**installation**

```bash
btrfs:
--------
--network bridge=virbr0 --> standard configuration

sudo wget https://raw.githubusercontent.com/DoJoMi/ks_virt/master/centos_btrfs.sh -O - > file &&  sudo sh file centos

uname:dojomi
pwd: dojomi

lvm:
--------
--network bridge=kvm --> own created bridge network

sudo wget https://raw.githubusercontent.com/DoJoMi/ks_virt/master/centos_lvm.sh -O - > file &&  sudo sh file centos

uname:dojomi
pwd: dojomi

```

**after full installation**

```
# start the machine
virsh --connect qemu:///system start centos
# show running machines
virsh --connect qemu:///system list
# connect to the machine via console
virsh --connect qemu:///system  console centos
ENTER
# to leave from console
CRTL+5
# or connect via ssh
f.e ssh dojomi@192.168.122.2

```

