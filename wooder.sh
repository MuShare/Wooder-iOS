#!/usr/bin/env bash
while read line;do
    eval "$line"
done < .wooder

json="$(curl $server/api/xcode/text/$projectId)"

path="`pwd`/$output"

for lan in $(echo $json | jq 'keys' | jq -r '.[] '); do
    echo $lan
    echo $json | jq -r ".\"$lan\"" > $(sed "s/lan/$lan.lproj/g" <<< $path)
done
