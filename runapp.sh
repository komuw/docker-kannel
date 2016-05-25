#!/usr/bin/env bash

# the order of exectuion here is important
exec /usr/sbin/smsbox /etc/kannel/kannel.conf & /usr/sbin/bearerbox /etc/kannel/kannel.conf
