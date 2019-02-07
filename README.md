# nginx-proxy with docker



```bash

docker build -t nginx-proxy-image .

# modify Dockerfile ENV
docker run -d -p 80:80 -p 443:443 -v $(PWD):/etc/nginx/conf.d --name proxy

# or 
docker run -d -p 80:80 -p 443:443 -v $(PWD):/etc/nginx/conf.d -e HOST={YOUR_HOST} -e PORT={YOUR_PORT} -e DOMAIN={YOUR_DOMAIN} --name proxy

```