#!/bin/bash -e

exec /usr/sbin/bearerbox -v 4 -- /etc/kannel/kannel.conf --pidfile /var/run/kannel/kannel_bearerbox.pid --no-extra-args