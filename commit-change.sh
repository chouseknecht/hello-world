#!/bin/bash
#
# commit-change.sh
#
set -x

git add . --all 

git commit -S

tower-cli workflow_job launch --job-template="Dev Deployment" --extra-vars='instance_tag: house001'
