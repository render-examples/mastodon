#!/usr/bin/bash

if [[ -z "${MY_LOCAL_DOMAIN}" ]]; then
  LOCAL_DOMAIN="${WEB_HOST}.onrender.com"
else
  LOCAL_DOMAIN="${MY_LOCAL_DOMAIN}"
fi
LOCAL_DOMAIN="${LOCAL_DOMAIN}" node ./streaming