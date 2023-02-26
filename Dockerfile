FROM ubuntu:jammy

LABEL org.opencontainers.image.authors="deployapp@oncosmos.com"

LABEL org.opencontainers.image.version="1.0.0"

LABEL org.opencontainers.image.licenses="GPL-3.0"

LABEL org.opencontainers.image.ref.name="cotuc"

LABEL description="Cipher Tunnel proxy for service"

LABEL proxytunnel=services

RUN apt update && apt install vim openssh-client sudo iproute2 mysql-client openssh-client supervisor -y && useradd proxytunnel && groupadd services && gpasswd -a proxytunnel services && mkdir -p /home/proxytunnel && chown proxytunnel:proxytunnel /home/proxytunnel

COPY service /etc/sudoers.d/service

COPY connect.sh /usr/sbin/connect.sh

COPY proxy.conf /etc/supervisor/conf.d/proxy.conf

RUN chmod 0440 /etc/sudoers.d/service && chmod 755 /usr/sbin/connect.sh

COPY run.sh /home/proxytunnel/run.sh

RUN chown proxytunnel:proxytunnel /home/proxytunnel/run.sh

USER proxytunnel

VOLUME ["/etc/supervisor/conf.d"]

CMD ["/home/proxytunnel/run.sh"]