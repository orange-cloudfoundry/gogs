#!/bin/sh


create_volume_subfolder() {
whoami
ls -als /data
mkdir /data
chown git /data
chgrp git /data

ls -als /data
}

setids() {
    PUID=${PUID:-1000}
    PGID=${PGID:-1000}
    groupmod -o -g "$PGID" git
    usermod -o -u "$PUID" git
}

setids
create_volume_subfolder


