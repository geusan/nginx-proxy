# nginx-proxy with docker

docker-compose를 사용하지 않는 방법임

1. 도메인 연결 정보를 /etc/hosts 파일에 입력한다.
2. 먼저 연결할 서버 컨테이너를 올려둔 상태에서 시작한다.
3. 도메인과 연결된 서버의 IP 주소, port 번호를 default.conf에 입력한다.
4. 아래의 build image부터 진행한다.

```bash

# you can get container's ip address
docker inspect {YOUR_CONTAINER_NAME} | grep IPAdress

# yout cna get container's port (on running)
docker ps


# build image
docker build -t nginx-proxy-image .

# run container
docker run -d -p 80:80 -p 443:443 -v $(PWD):/etc/nginx/conf.d --link {YOUR_CONTAINER_NAME} --name proxy nginx-proxy-image

```