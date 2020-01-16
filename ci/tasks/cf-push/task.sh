#!/bin/bash

source source-repo/ci/scripts/install-cf.sh

# set api target
cf api \
  $CF_TARGET \
  --skip-ssl-validation

# login to cf using the username and password
cf login \
  -u $CF_USERNAME \
  -p $CF_PASSWORD \
  -o $CF_ORG \
  -s $CF_SPACE

# push the application
cf push \
  dell-training-mvc source-repo \
  -p source-repo/DellTraining.MvcApp \
  -f source-repo/DellTraining.MvcApp/manifest.yml  