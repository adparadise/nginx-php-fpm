#!/bin/bash

## Script to create a local Docker image.
##
## NOTE: This is _not_ used in the standard CI pipeline, and is only
## here for local testing.

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
PROJECT_HOME="$( cd -P "$( dirname "${SOURCE}" )/.." && pwd )"
cd "${PROJECT_HOME}"

set -euo pipefail

imageTag="nginx-php-5.6.35"
docker build -t "${imageTag}" .

echo "built image ${imageTag}"

