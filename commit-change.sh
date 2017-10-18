#!/bin/bash
#
# commit-change.sh
#
set -x

git add . --all 

git commit -S -m="Hello AWX" 

tower-cli workflow_job launch \
  --workflow_job_template="Dev Deployment" \
  --extra-vars="instance_tag=house001 instace_type=t2.medium"
