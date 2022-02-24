# ss2http
connect to ss server and convert socks to http
## usage
```
docker run -d --restart always -p 1087:1087 \
-e SERVER_ADDR=your-ss-server-addr \
-e SERVER_PORT=your-ss-server-port \
-e PASSWORD=password \
-e METHOD=method \
ghcr.io/yedamao/ss2http:latest
```
