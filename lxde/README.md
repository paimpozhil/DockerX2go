
#DockerX2go
==========

LXDE with X2go preinstalled.


### How to run a server?

Pull from Docker Index and run the image

```
docker pull paimpozhil/dock-x2go-lxde
CID=$(docker run -p 2222:22 -t -d paimpozhil/dock-x2go-lxde)
docker logs $CID

note down the root/dockerx passwords.
```

OR

build it yourself.

```
git clone https://github.com/paimpozhil/DockerX2go.git .
cd lxde
docker build -t [yourimagename] .
CID=$(docker run -p 2222:22 -t -d [yourimagename])

docker logs $CID

note the root/dockerx passwords
```


### How to run/connect to server with a Client?

Download the x2go client for your OS from:
http://wiki.x2go.org/doku.php/doc:installation:x2goclient

Connect to your server with docker hosts's IP , Port : 2222 , Username : root , Password : ( look at docker logs for container)

Select the Session TYPE as : LXDE , this is very important

You can also SSH to the docker container directly with root or dockerx users and their passwords over the port 2222 with linux ssh or windows putty clients.

users dockerx can be used to login however for some reason you need to use root for your very first login then you can use dockerx to login with x2go :)

```
ssh root@dockerhost -p 2222
```

###Credits:

####http://bmullan.wordpress.com/
####https://github.com/rogaha/docker-desktop
####https://github.com/tutumcloud/tutum-ubuntu

#### Docker.io && x2go.org
