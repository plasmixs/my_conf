
sudo apt-get install git-core
sudo apt-get install openjdk-8-jdk
sudo apt-get install maven

sudo update-ca-certificates -f

mkdir .m2

wget -q -O - https://raw.githubusercontent.com/opendaylight/odlparent/master/settings.xml > ~/.m2/settings.xml


git clone https://git.opendaylight.org/gerrit/p/integration/distribution.git

export MAVEN_OPTS='-Xmx1048m -XX:MaxPermSize=512m'

mvn clean install -DskipTests -DskipIT


#Help channels
http://webchat.freenode.net/?channels=opendaylight
http://webchat.freenode.net/?channels=opendaylight-ovsdb

#For running the distributions
sudo apt-get install openjdk-8-jre
