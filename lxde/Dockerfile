FROM ubuntu:14.04
MAINTAINER Paimpozhil "paimpozhil@gmail.com"

RUN apt-get update -y && sudo apt-get upgrade -y

ENV DEBIAN_FRONTEND noninteractive


# Upstart and DBus have issues inside docker. We work around in order to install firefox.
RUN dpkg-divert --local --rename --add /sbin/initctl && ln -sf /bin/true /sbin/initctl

# Installing fuse package (libreoffice-java dependency) and it's going to try to create
# a fuse device without success, due the container permissions. || : help us to ignore it. 
# Then we are going to delete the postinst fuse file and try to install it again!

RUN apt-get -y install fuse  || :
RUN rm -rf /var/lib/dpkg/info/fuse.postinst
RUN apt-get -y install fuse

RUN apt-get install -y openssh-server lxde software-properties-common python-software-properties

RUN add-apt-repository ppa:x2go/stable

RUN apt-get update

RUN apt-get install x2goserver x2goserver-xsession x2golxdebindings pwgen firefox pulseaudio libcurl3 libappindicator1 -y

RUN mkdir -p /var/run/sshd && sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config
RUN sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config
RUN sed -i "s/#PasswordAuthentication/PasswordAuthentication/g" /etc/ssh/sshd_config

ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
ADD chrome.sh /chrome.sh
RUN chmod +x /*.sh

EXPOSE 22

CMD ["/run.sh"]
