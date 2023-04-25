#!/bin/bash
set -euo pipefail

# TODO
# support options before the command
# support `podman ps` too
# add some bats tests
# update UDI to include kubedock
# update UDI to include this script
# add check if kubedock is started and start it otherwise

# if command is run then call docker run
if [ $# -ge 1 ] && [ "$1" = "run" ]; then
  docker "$@"
else
  podman "$@"
fi

