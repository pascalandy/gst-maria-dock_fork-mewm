FROM node:0.10-wheezy
MAINTAINER Pascal Andy

ENV PATH_DEPLOYMENT "/var/www/99999101AC/"
ENV GHOST_VERSION 0.7.8

RUN buildDeps=' \
		gcc \
		make \
		python \
		unzip \
	' \
RUN mkdir -p $PATH_DEPLOYMENT
RUN cd $PATH_DEPLOYMENT
RUN PWD
RUN curl -sSL "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" -o ghost.zip
RUN apt-get update && apt-get install zip unzip
RUN unzip ghost.zip -d /ghost
RUN rm -f ghost.zip
RUN npm install sqlite3 --build-from-source

ENV HOME ${PATH_DEPLOYMENT}/ghost/
    # '$HOME path looks like /var/www/999999101XZ/ghost'

RUN cd $HOME
RUN npm install --production
RUN apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps
RUN npm cache clean \
RUN rm -rf /tmp/npm*
RUN useradd ghost --home $HOME
WORKDIR $HOME

# Add config and script to start the engine
ADD config.js $HOME/config.js
ADD run-ghost.sh /run-ghost.sh
ADD install_newrelic.sh /install_newrelic.sh
RUN chmod 0500 /run-ghost.sh

CMD /run-ghost.sh
