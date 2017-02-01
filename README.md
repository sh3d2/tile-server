## INSTALLATION

build docker image
```
docker build -t tiles-server .
```


## Running


```
docker run -d -e "TILES_HOST=127.0.0.1" -p 8888:8888 -v /tmp/tile-server:/opt/tiles tiles
```

replace 127.0.0.1 with actual domain the tile server will be available (ex. tiles.yourdomain.com)
