FROM ubuntu:14.04
MAINTAINER Paimpozhil "paimpozhil@gmail.com"

RUN apt-get update && sudo apt-get upgrade -y

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y openssh-server lxde software-properties-common python-software-properties

RUN apt-get install -y firefox pulseaudio

RUN add-apt-repository ppa:x2go/stable

RUN apt-get update

RUN apt-get install x2goserver x2goserver-xsession x2golxdebindings pwgen -y

RUN mkdir -p /var/run/sshd && sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config
RUN sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config
RUN sed -i "s/#PasswordAuthentication/PasswordAuthentication/g" /etc/ssh/sshd_config

ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 22

CMD ["/run.sh"]
