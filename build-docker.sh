#!/usr/bin/env bash

# shellcheck disable=SC2006
# shellcheck disable=SC2086
dir=`dirname "$(realpath $0)"`
name=unamurcsfaculty/pwsh-msteams
version=latest

docker image build -t ${name}:${version} ${dir}
