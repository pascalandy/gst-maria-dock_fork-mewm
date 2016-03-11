RUN docker run -d \
    --name nginx-gen \
    --volumes-from nginx \
    -v /etc/docker-gen/templates/nginx.tmpl:/etc/docker-gen/templates/nginx.tmpl:ro \
    -v /var/run/docker.sock:/tmp/docker.sock:ro \
    jwilder/docker-gen \
    -notify-sighup nginx -watch -only-exposed -wait 5s:30s /etc/docker-gen/templates/nginx.tmpl /etc/nginx/conf.d/default.conf
