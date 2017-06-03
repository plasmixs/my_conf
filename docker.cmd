sudo apt-get install docker.io

sudo usermod -aG docker ubuntu

docker pull ubuntu:15.10

docker run -t -i --name host1 --cap-add=NET_ADMIN s:host1
docker start host1
docker attach host1

docker run -t -i --name ovs-build -v /shared:/shared s:ovs-build

docker build <directory of dockerfile>
