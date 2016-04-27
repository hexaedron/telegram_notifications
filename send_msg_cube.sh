#!/bin/bash

URL_TEXT=$(echo "$*" | /usr/bin/php -r "echo urlencode(file_get_contents('php://stdin'));")
/usr/bin/wget -q -O /dev/null -t 0 --retry-connrefused "https://api.telegram.org/$TLGRM_BOT_KEY/sendMessage?chat_id=$TLGRM_CHAT_ID&text=$URL_TEXT"
