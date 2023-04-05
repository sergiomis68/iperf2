FROM fedora:37

MAINTAINER sergione

RUN \
 dnf clean all && \
 dnf install https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/37/Everything/x86_64/os/Packages/i/iperf-2.1.8-1.fc37.x86_64.rpm -y

USER 1001

ENTRYPOINT ["/usr/bin/iperf", "-s -u -e -i 1"]
 EXPOSE 5201
