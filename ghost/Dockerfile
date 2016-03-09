FROM node:0.10-wheezy
MAINTAINER Pascal Andy

# Download and install latest version of ghost
RUN cd /tmp
RUN wget https://ghost.org/zip/ghost-latest.zip
RUN apt-get update
RUN apt-get install zip unzip
RUN unzip ghost-latest.zip -d /ghost 
RUN rm -f ghost-latest.zip
RUN mkdir -p /var/www/99999101AC/
RUN mv /ghost /var/www/99999101AC/
RUN npm install sqlite3 --build-from-source
RUN cd /var/www/99999101AC/ghost/ && npm install --production

# Move ghost into the system neighbourhood. Welcome yo!
ENV HOME /var/www/99999101AC/ghost/
RUN useradd ghost --home /var/www/99999101AC/ghost/
WORKDIR /var/www/99999101AC/ghost/

# Add config and script to start the engine
ADD config.js /var/www/99999101AC/ghost/config.js
ADD run-ghost.sh /run-ghost.sh
ADD install_newrelic.sh /install_newrelic.sh
RUN chmod 0500 /run-ghost.sh

CMD /run-ghost.sh
