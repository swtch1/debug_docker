#!/usr/bin/env bash

if [[ $0 != 'bash' ]];then
    echo "proxy not set. source this file with 'source $0'"
    exit 1
fi

export http_proxy=thd-svr-proxy-qa.homedepot.com:9090
export https_proxy=thd-svr-proxy-qa.homedepot.com:9090
export HTTP_PROXY=thd-svr-proxy-qa.homedepot.com:9090
export HTTPS_PROXY=thd-svr-proxy-qa.homedepot.com:9090
