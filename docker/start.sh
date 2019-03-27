#!/bin/sh

# Exec CMD or S6 by default if nothing present
if [ $# -gt 0 ];then
    exec "$@"
else
    export USER=git
    exec gosu $USER /app/gogs/gogs web
fi
