#!/bin/bash

fly set-pipeline \
    -t dell \
    -p dell-dotnet-core-training \
    -c pipeline.yml \
    -v cf_target='api.sys.dell.azure.pivotal.rocks' \
    -v cf_org='Pivotal_Lab' \
    -v cf_space='Poovan_Space'