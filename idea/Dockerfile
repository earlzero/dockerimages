FROM java:7
RUN apt-get install wget
RUN     echo "deb http://httpredir.debian.org/debian jessie main" > /etc/apt/sources.list
RUN     apt-get update
RUN     apt-get install -y --force-yes x11vnc xvfb git openbox
RUN     mkdir ~/.vnc
# Setup a password
RUN     x11vnc -display :1  -storepasswd 1234 ~/.vnc/passwd
WORKDIR /root
RUN bash -c 'echo "nohup openbox &" >> .bashrc' 
RUN apt-get install x11-apps -y
ADD launch.sh /root/launch.sh

