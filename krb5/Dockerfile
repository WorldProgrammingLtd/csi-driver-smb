ARG ARCH

FROM k8s.gcr.io/build-image/debian-base-${ARCH}:v2.1.3
RUN clean-install krb5-user cron

COPY krb5-renew.sh krb5-start.sh /usr/local/sbin/
RUN chmod 0755 /usr/local/sbin/krb5-renew.sh /usr/local/sbin/krb5-start.sh

ENTRYPOINT [ "/usr/local/sbin/krb5-start.sh" ]
