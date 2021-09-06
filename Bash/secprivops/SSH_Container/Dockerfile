FROM ubuntu
RUN apt-get upgrade
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y figlet
RUN apt-get -y install openssh-server docker.io sudo
RUN mkdir -p /run/sshd
RUN rm /etc/legal
RUN rm /etc/ssh/sshd_config
RUN chmod -x /etc/update-motd.d/*
COPY welcome /etc/update-motd.d/
RUN chmod +x /etc/update-motd.d/welcome
COPY sshd_config /etc/ssh/
COPY banner /opt/
COPY manage.sh /opt/
RUN rm /etc/sudoers
COPY sudoers /etc/
RUN useradd -d /home/ctf/ -m -p FwOrDAndKahl4FTW -s /opt/manage.sh ctf
RUN echo "ctf:FwOrDAndKahl4FTW" | chpasswd
RUN service ssh reload
WORKDIR /home/ctf
RUN chown -R root:root /home/ctf

CMD service ssh restart && tail -f /dev/null

#Add this option when launching container -v /var/run/docker.sock:/var/run/docker.sock
