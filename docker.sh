#!/usr/bin/env bash

mybase=$(realpath $(dirname "$0"))
VULN_APPS="$mybase/webapps"

V="$1"

if [[ ! -d "$mybase/webapps/$V" ]]; then
    echo "No such version deployed. Available versions:"
    ls "$mybase/webapps/" | sort -n
    exit -1
fi

#docker build -t struts.vuln .

docker run -d --rm -v "$VULN_APPS/$V":"/usr/local/tomcat/webapps/ROOT" --name "struts.vuln.$V" struts.vuln

if [[ $? -ne 0 ]]; then
    echo "Failed to run container"
    exit -1
fi


IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "struts.vuln.$V")

echo "$IP"

