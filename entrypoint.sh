#!/bin/sh

set -e

if [ -x /usr/local/bin/autorun.sh ]; then
    . /usr/local/bin/autorun.sh
fi

if [ ! -f /etc/awstats/awstats.conf ]; then
    envsubst </etc/awstats.default.conf >/etc/awstats/awstats.conf
fi

exec "$@"
