#!/bin/bash
# NEW_RELIC="${NEW_RELIC_LICENSE_KEY:=0}"

# if [ "${NEW_RELIC}" != "0" ] && [ "${NODE_ENV}" = "production" ]; then
#	sh /install_newrelic.sh ${NEW_RELIC}
# fi

# This is a hack. We put a custom theme under the official theme casper.
_theme_source_destination="${HOME}/content/themes/casper"

if [ -d ${_theme_source_destination} ]; then
    cd ${_theme_source_destination} && git pull origin master
    cd $HOME
else
    git clone ${THEME_SOURCE} $HOME/content/themes/casper
fi

chown -R ghost ${HOME}
su ghost -c "npm start"
