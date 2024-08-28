#!/bin/bash
BOT_TOKEN="7341372791:AAG0MF2WdIKgBViSfUuhhBPwNq0XlTBjJEQ"
USER_ID="234583556"

URL="https://api.telegram.org/bot$BOT_TOKEN/sendMessage"
#if [[ $CI_JOB_STATUS == "failed"]]; then var_status="👍"; else var_status="👎"; fi;
TEXT="STAGE: $1%0A%0AProject:+$CI_PROJECT_NAME%0AStatus:+$CI_JOB_STATUS+$var_status%0AUrl:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s -d "chat_id=$USER_ID&web_page_preview=1&text=$TEXT" $URL > /dev/null