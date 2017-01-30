#!/bin/bash
# You can find your USERID with bot @useridbot
USERID=""
# Bot API key from BotFather
KEY="API-TOKEN"
TIMEOUT="10"
# DEFINE TEXT
TEXT=""
URL="https://api.telegram.org/bot$KEY/sendMessage"
echo -n "You wanna send a message? (Y/n)"
read choise
case "$choise" in
	y|Y|*) echo "Enter message:"
	read TEXT
	curl -s --max-time $TIMEOUT -d "chat_id=$USERID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
	;;
	n|N)
	;;
esac
