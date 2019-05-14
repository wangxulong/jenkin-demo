#!/usr/bin/env bash

REGISTRY=image.overlay2.lsn.im
action=$1
branch=$(git rev-parse --abbrev-ref HEAD)
deploy_dir="dev"

echo ${branch}

if [[ ${branch}  =~ ^v[1-9]+\.[0-9]+\.[0-9]+$ ]]; then
     echo "发布版"

    #发布版
    version=$(git rev-parse --abbrev-ref HEAD)
    deploy_dir="release"
else
    echo "最先版本"
    #version=${branch}-$(git rev-parse --short HEAD)
    version="latest"
fi

function action_build() {
    docker run --rm -w app -v `pwd`/.m2:/root/.m2 -v `pwd`:/app \
        maven:3.6.1-jdk-11-slim \
        mvn versions:set -DgenerateBackupPoms=false -DnewVersion=${version}
    #编译，运行单元测试和集成测试
    cd dev && ./run.sh
}
#
#function action_deploy() {
#
#}



if [[ ${action} == "deploy" ]]; then
    echo "deploy"
fi

if [[ ${action} == "build" ]]; then
     echo "build"
     action_build
fi