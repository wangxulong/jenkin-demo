#!/usr/bin/env bash


REGISTRY=image.overlay2.lsn.im

action=$1

if [[ ${action} == "deploy" ]]; then
    echo "deploy"
fi

if [[ ${action} == "build" ]]; then
     pwd
     echo "build"
fi