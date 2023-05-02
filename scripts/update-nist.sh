#!/bin/bash

source "$(dirname "${BASH_SOURCE[0]}")/logging.sh"
source "$(dirname "${BASH_SOURCE[0]}")/import.sh"

update_nist () {
  run_log 0 "Removing existing NIST rev5 catalog from workspace"
  rm -rf "catalogs/nist_rev5_800_53"
  rm -rf "catalogs/nist_rev4_800_53"
  import_nist_rev5_catalog
  import_nist_rev4_catalog
  source "$(dirname "${BASH_SOURCE[0]}")/update.sh" "Sync NIST OSCAL content"
}

update_fedramp "$@"