
### How to run a Centos Desktop  ?

Pull from Docker Index and run the image

```
docker pull paimpozhil/docker-centos
CID=$(docker run -p 2222:22 -t -d paimpozhil/docker-centos)
```

OR

build it yourself.

```
git clone https://github.com/paimpozhil/DockerX2go.git .
cd centos
docker build -t [yourimagename] .
CID=$(docker run -p 2222:22 -t -d [yourimagename])
```


### How to run/connect to server with a Client?

Download the x2go client for your OS from:
http://wiki.x2go.org/doku.php/doc:installation:x2goclient

Connect to your server with docker hosts's IP , Port : 2222 , Username : dockerx or root , Password : ch@ngem3

Select the Session TYPE as : XFCE , this is very important

You can also SSH to the docker container directly with root or dockerx users and their passwords over the port 2222 with linux ssh or windows putty client.


Immediately change your passwords from changeme to anything else as soon as you login with command line 

```
passwd root
passwd dockerx

```
