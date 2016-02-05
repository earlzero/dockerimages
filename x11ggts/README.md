GGTS doesn't work well with java 8, so I had to make separate container with java 7 to simplify my life.
use
`docker build -t ggts` to build container
then launch using
`docker run -p 5900:5900 ggts bash /root/launch.sh 1280x1024x16`
where 1280x1024x16 is resolution of container "screen"
