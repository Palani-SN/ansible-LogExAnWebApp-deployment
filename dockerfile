FROM alpine:latest
LABEL maintainer="openssh server psn396@gmail.com"
ENV PYTHONUNBUFFERED=1
RUN apk update
RUN apk add sudo
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN apk add --update --no-cache openssh 
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN echo 'openssh ALL=(ALL:ALL) ALL' > /etc/sudoers.d/openssh
RUN adduser -h /home/openssh -s /bin/sh -D openssh
RUN echo -n 'openssh:password' | chpasswd
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22
EXPOSE 5000
COPY entrypoint.sh /