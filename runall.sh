#!/usr/bin/env bash

rm *.lst &>/dev/null

mybase=$(realpath $(dirname "$0"))
projectroot=$(realpath "$mybase/../")
EXPLOIT_BIN="$projectroot/x"


while read -r line <&3; do
    echo "Version $line"
    D=$("$mybase/docker.sh" "$line")
    containerId=$(echo "$D" | head -n 1)
    ip=$(echo "$D" | tail -n 1)

    sleep 5 
    export V="$line"
    "$EXPLOIT_BIN" "$ip" 
    docker exec -i "$containerId" ls /tmp/badpanda &>/dev/null
    if [[ $? -eq 0 ]]; then
        echo -e "\tSUCCESS EXEC $V"
    else
        echo -e "\tFAIL EXEC $V"
    fi

    docker stop "$containerId" &>/dev/null
done 3< <(ls "$mybase/webapps" | sort -n)

