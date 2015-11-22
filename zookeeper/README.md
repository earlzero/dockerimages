This is docker-compose file for building 3-node zookeeper cluster. 
First node is bound to docker host port 2181, second - 2182, third - 2183. 
To start up you should use experimental networking
> docker-compose --x-networking up
