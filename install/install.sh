#!/usr/bin/env bash
# Compatibility entry point: install.sh [options] is adev install [options]. See install/README.md.
set -euo pipefail
exec "$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd -P)/bin/adev" install "$@"
