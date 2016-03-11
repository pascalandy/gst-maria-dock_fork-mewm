FROM node:0.10-wheezy
MAINTAINER Pascal Andy

ENV GHOST_VERSION 0.7.8

# Download and install latest version of ghost
RUN cd /tmp
RUN wget https://ghost.org/zip/ghost-latest.zip
RUN apt-get update
RUN apt-get install zip unzip
RUN unzip ghost-latest.zip -d /ghost
RUN rm -f ghost-latest.zip
#                    <__________>
RUN mkdir -p /var/www/99999101AD/
#                     <__________>
RUN mv /ghost /var/www/99999101AD/
RUN npm install sqlite3 --build-from-source
#              <__________>
RUN cd /var/www/99999101AD/ghost/ && npm install --production

#                <__________>
ENV HOME /var/www/99999101AD/ghost/
#              									 <__________>
RUN useradd ghost --home /var/www/99999101AC/ghost/
#               <__________>
WORKDIR /var/www/99999101AD/ghost/

# Add config and script to start the engine
#                     <__________>
ADD config.js /var/www/99999101AD/ghost/config.js
ADD run-ghost.sh /run-ghost.sh
RUN chmod 0500 /run-ghost.sh

CMD /run-ghost.sh
