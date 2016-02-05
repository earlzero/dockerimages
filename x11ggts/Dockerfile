FROM java:7
RUN apt-get install wget
RUN     echo "deb http://httpredir.debian.org/debian jessie main" > /etc/apt/sources.list
RUN     apt-get update
RUN     apt-get install -y --force-yes x11vnc xvfb git openbox

RUN mkdir /ggts
WORKDIR /ggts
RUN wget http://dist.springsource.com/release/STS/3.6.4.RELEASE/dist/e4.4/groovy-grails-tool-suite-3.6.4.RELEASE-e4.4.2-linux-gtk-x86_64.tar.gz
RUN tar zxvf groovy-grails-tool-suite-3.6.4.RELEASE-e4.4.2-linux-gtk-x86_64.tar.gz
RUN     mkdir ~/.vnc
# Setup a password
RUN     x11vnc -display :1  -storepasswd 1234 ~/.vnc/passwd
WORKDIR /root
RUN bash -c 'echo "nohup openbox &" >> .bashrc' 
RUN bash -c 'echo "/ggts/ggts-bundle/ggts-3.6.4.RELEASE/GGTS" >> .bashrc' 
ADD launch.sh /root/launch.sh
