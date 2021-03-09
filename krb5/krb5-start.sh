#!/bin/sh
#
#  Set-up to keep a valid ticket
#

# Renew our ticket immediately
/usr/local/sbin/krb5-renew.sh

# Write a crontab entry
cat >/etc/cron.d/krb5-renewal <<EOF
KRB5_PRINCIPAL=$KRB5_PRINCIPAL

7 0 * * *	/usr/local/sbin/krb5-renew.sh
EOF

# Finally, start cron
exec /usr/sbin/cron -f
