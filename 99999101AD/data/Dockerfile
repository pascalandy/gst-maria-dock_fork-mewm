FROM busybox
MAINTAINER Pascal Andy

# Note: The ENV $PATH_CLIENT_ID variable is declared in the docker-compose

# Create default ghost content dirs
RUN mkdir -p $PATH_CLIENT_ID/ghost/content/apps
RUN mkdir -p $PATH_CLIENT_ID/ghost/content/images
RUN mkdir -p $PATH_CLIENT_ID/ghost/content/themes
RUN mkdir -p $PATH_CLIENT_ID/ghost/content/data
