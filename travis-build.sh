#!/usr/bin/env sh

TAG="build-$(date -u '+%Y-%m-%d-%H%M%S')"
git tag -s -m "${TAG}" "${TAG}"
git push "git@github.com:DolceSDK/autobuilds.git" "${TAG}"
