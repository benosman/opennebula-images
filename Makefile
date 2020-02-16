export LIBGUESTFS_BACKEND=direct
export LIBGUESTFS_MEMSIZE=2048
export TIMEZONE=UTC

.PHONY: all clean

all: \
	images/alpine-3.11 \
	images/ubuntu-16.04 \
	images/ubuntu-18.04 \
	images/debian-9 \
	images/devuan-2 \
	images/centos-6 \
	images/centos-7 \
	images/centos-8 \
	images/fedora-30 \
	images/fedora-31 \
	images/opensuse-leap-15 \
	download/alpine-3.11 \
	download/ubuntu-16.04 \
	download/ubuntu-18.04 \
	download/debian-9 \
	download/devuan-2 \
	download/centos-6 \
	download/centos-7 \
	download/centos-8 \
	download/fedora-30 \
	download/fedora-31 \
	download/opensuse-leap-15

clean:
	rm -rf images/*

images/alpine-3.10:
	./mkimage.alpine alpine-3.10 500M

images/alpine-3.11:
	./mkimage.alpine alpine-3.11 500M

images/ubuntu-16.04:
	./mkimage.ubuntu ubuntu-16.04 2G

images/ubuntu-18.04:
	./mkimage.ubuntu ubuntu-18.04 2G

images/debian-9:
	./mkimage.debian debian-9 2G

images/debian-10:
	./mkimage.debian debian-10 2G

images/devuan-2:
	./mkimage.devuan devuan-2 2G

images/centos-6:
	./mkimage.centos6 centos-6 2G

images/centos-7:
	./mkimage.centos7 centos-7 2G
	
images/centos-8:
	./mkimage.centos8 centos-8 2G

images/fedora-30:
	./mkimage.fedora fedora-30 2G

images/fedora-31:
	./mkimage.fedora fedora-31 2G

images/opensuse-leap-15:
	./mkimage.opensuse opensuse-leap-15 2G

download/alpine-3.10:
	./download alpine-3.10 \
	  "https://alpine.global.ssl.fastly.net/alpine/v3.10/releases/x86_64/alpine-minirootfs-3.10.4-x86_64.tar.gz"

download/alpine-3.11:
	./download alpine-3.11 \
		"https://alpine.global.ssl.fastly.net/alpine/v3.11/releases/x86_64/alpine-minirootfs-3.11.4-x86_64.tar.gz"

download/ubuntu-16.04:
	./download ubuntu-16.04 \
		"https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-disk1.img"

download/ubuntu-18.04:
	./download ubuntu-18.04 \
		"https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img" \

download/debian-9:
	./download debian-9 \
		"https://cdimage.debian.org/cdimage/openstack/current/debian-9.9.3-20190618-openstack-amd64"

download/debian-10:
	./download debian-10 \
		"https://cdimage.debian.org/cdimage/openstack/current/debian-10.0.1-20190708-openstack-amd64"

download/devuan-2:
	./download devuan-2 \
		"https://mirror.leaseweb.com/devuan/devuan_ascii/virtual/devuan_ascii_2.0.0_amd64_qemu.xz"

download/centos-6:
	./download "$@" 2G \
		"https://cloud.centos.org/centos/6/download/CentOS-6-x86_64-GenericCloudc"

download/centos-7:
	./download centos-7 \
		"https://cloud.centos.org/centos/7/download/CentOS-7-x86_64-GenericCloudc"

download/centos-8:
	./download centos-8 \
    "https://cloud.centos.org/centos/8/x86_64/download/CentOS-8-GenericCloud-8.1.1911-20200113.3.x86_64"

download/fedora-30:
	.download fedora-30 \
		"https://download.fedoraproject.org/pub/fedora/linux/releases/30/Cloud/x86_64/download/Fedora-Cloud-Base-30-1.2.x86_64"

download/fedora-31:
	./download fedora-31 \
		"https://download.fedoraproject.org/pub/fedora/linux/releases/31/Cloud/x86_64/download/Fedora-Cloud-Base-31-1.9.x86_64"

download/opensuse-leap-15:
	./download opensuse-leap-15 \
		"https://download.opensuse.org/repositories/Cloud:/Images:/Leap_15.2/download/openSUSE-Leap-15.2-OpenStack.x86_64"
