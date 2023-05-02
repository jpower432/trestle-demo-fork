#!/bin/bash

source "$(dirname "${BASH_SOURCE[0]}")/logging.sh"
source "$(dirname "${BASH_SOURCE[0]}")/import.sh"

update_fedramp () {
  run_log 0 "Removing existing FedRAMP content from workspace"
  rm -rf "profiles/fedramp_rev4_moderate"
  import_fedramp_rev4_moderate_profiles
  source "$(dirname "${BASH_SOURCE[0]}")/update.sh" "Sync FedRAMP"
}

update_fedramp "$@"