#!/usr/bin/env bash

action=$1

if [[${action} == "deploy"]]; then
    echo "deploy"
fi

if [[${action} == "build"]]; then
    echo "deploy"
fi
