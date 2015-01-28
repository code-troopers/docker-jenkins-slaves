#!/bin/bash
# If possible, create the /dev/kvm device node.

set -e

lsmod | grep '\<kvm\>' > /dev/null || {
  echo >&2 "KVM module not loaded; software emulation will be used"
  exit 1
}

# Create the kvm node (required --privileged)
if [ ! -e /dev/kvm ]; then
   mknod /dev/kvm c 10 $(grep '\<kvm\>' /proc/misc | cut -f 1 -d' ')   
fi

# authorize the kvm group to use KVM
chown root:kvm /dev/kvm
chmod g+rwx /dev/kvm
/usr/sbin/sshd -D
