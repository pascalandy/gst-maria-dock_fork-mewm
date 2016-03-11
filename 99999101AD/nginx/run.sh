docker run -d -p 80:80 -p 443:443 \
    --name nginx \
    -v /etc/nginx/conf.d  \
    -v /etc/nginx/vhost.d \
    -v /usr/share/nginx/html \
    -v /path/to/certs:/etc/nginx/certs:ro \
    nginx
