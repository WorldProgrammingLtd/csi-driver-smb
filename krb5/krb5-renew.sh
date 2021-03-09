#!/bin/sh
#
#  Renew a Kerberos ticket
#
/usr/bin/kinit -k -t /var/krb5/smb/krb5.keytab $KRB5_PRINCIPAL || {
    echo "Kerberos TGT renewal failed" | logger -t kerberos
    exit 1
}
echo "Kerberos TGT renewed" | logger -t kerberos
exit 0
