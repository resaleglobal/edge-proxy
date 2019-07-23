FROM nginx:1.15.2-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-enabled /etc/nginx/

EXPOSE 80
EXPOSE 443
ENTRYPOINT ["nginx","-g","daemon off;"]