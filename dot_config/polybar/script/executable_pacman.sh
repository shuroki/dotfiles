#!/bin/sh

if ! updates=$(paru -Qum 2> /dev/null | wc -l); then
    updates=0
fi

echo "${updates}"