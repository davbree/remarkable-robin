#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://f88658276114.ngrok.io/project/5fec913dd2eac163c9b7f5f6/webhook/build/pull > /dev/null
curl -s -X POST https://f88658276114.ngrok.io/project/5fec913dd2eac163c9b7f5f6/webhook/build/ssgbuild > /dev/null
gatsby build
curl -s -X POST https://f88658276114.ngrok.io/project/5fec913dd2eac163c9b7f5f6/webhook/build/publish > /dev/null
