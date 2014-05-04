DockerX2go
==========

Xubuntu with X2go preinstalled.

WHY ?

I want an Isolated thin client server setup that still re-uses the disk/memory for common programs and OS.

I wanted a full desktop running on the docker so I can painlessly create multiple isolated linux systems to which our thinclients on our offices work with.

Instead of running 5 seperate virtual machines I wanted to use a common VM with same base os/applications and then users can customize the os do anything they want without killing other users/etc.




How to run a server?

Pull from Docker Index and run the image

docker pull paimpozhil/dockerx2go
docker run -p 2222:22 -t -i paimpozhil/dockerx2go

OR

build it yourself.

git clone https://github.com/paimpozhil/DockerX2go.git .
docker build -t -i .
docker run -p 2222:22 -t -i [imagename]


Get the passwords to the server:

docker logs 

How to run/connect to server with a Client?

Download the x2go client for your OS from:
http://wiki.x2go.org/doku.php/doc:installation:x2goclient

Connect to your server with docker hosts's IP , Port : 2222 , Username : dockerx , Password : ( look at docker logs for container)

Credits:

http://bmullan.wordpress.com/
https://github.com/rogaha/docker-desktop
https://github.com/tutumcloud/tutum-ubuntu

Docker.io && x2go.org
