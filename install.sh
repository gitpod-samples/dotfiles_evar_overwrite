#!/usr/bin/env bash

env_vars=(
	GIT_EDITOR=vim
)


for env in "${env_vars[@]}"; do {
	key="${env%%=*}"
	value="${env#*=}"
	printf 'export %s="%s"\n' "${key}" "${value}"
} done >> "${HOME}/.bashrc"

