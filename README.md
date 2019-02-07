# nginx-proxy with docker



```bash

docker build -t nginx-proxy-image .

# modify Dockerfile ENV
docker run -d -p 80:80 -p 443:443 -v $(PWD):/etc/nginx/conf.d --link {YOUR_CONTAINER_NAME} --name proxy nginx-proxy-image

# or 
docker run -d -p 80:80 -p 443:443 -v $(PWD):/etc/nginx/conf.d --link {YOUR_CONTAINER_NAME} -e DOMAIN={YOUR_DOMAIN} --name proxy nginx-proxy-image


# you can get container's ip address
docker inspect {YOUT_CONTAINER_NAME} | grep IPAdress

# yout cna get container's port (on running)
docker ps

```