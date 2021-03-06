FROM nginx

ARG PROJECT_DIRECTORY=/etc/nginx/conf.d

COPY cert.pem ${PROJECT_DIRECTORY}/cert.pem
COPY key.pem ${PROJECT_DIRECTORY}/key.pem
COPY default.conf #{PROJECT_DIRECTORY}/default.conf

