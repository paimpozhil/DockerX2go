#!/bin/bash
if [ ! -f /.root_pw_set ]; then
	/set_root_pw.sh
fi

chmod 1777 /dev/shm

exec /usr/sbin/sshd -D
