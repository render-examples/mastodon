#!/usr/bin/bash

if [[ -z "${MY_LOCAL_DOMAIN}" ]]; then
  LOCAL_DOMAIN="${RENDER_EXTERNAL_HOSTNAME}"
else
  LOCAL_DOMAIN="${MY_LOCAL_DOMAIN}"
fi
bundle exec rake db:migrate
LOCAL_DOMAIN="${LOCAL_DOMAIN}" bundle exec rails s -p 3000
