#!/bin/bash

/etc/init.d/dbus start
avahi-daemon --no-drop-root
