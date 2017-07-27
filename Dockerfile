FROM debian:jessie
EXPOSE 80 2222
ENV DEBIAN_FRONTEND=noninteractive
COPY init.sh /init.sh
WORKDIR /
RUN apt update && \
    apt install -y dos2unix openssh-server && \
    dos2unix init.sh && \
    echo "root:Docker!" | chpasswd 

COPY sshd_config /etc/ssh/

CMD ["/init.sh"]
