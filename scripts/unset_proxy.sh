#!/usr/bin/env bash

if [[ $0 != 'bash' ]];then
    echo "proxy not unset. source this file with 'source $0'"
    exit 1
fi

unset http_proxy
unset https_proxy
unset HTTP_PROXY
unset HTTPS_PROXY
