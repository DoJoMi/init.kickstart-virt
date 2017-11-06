**info**


```
#bridge can be changed inside the .cfg files
--network bridge=kvm
to
--network bridge=virbr0 \

if nothing is defined, the default address will be configured virbr0 --> 192.168.122.*
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
