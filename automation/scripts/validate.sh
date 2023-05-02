#!/bin/bash

source "$(dirname "${BASH_SOURCE[0]}")/logging.sh"
source "$(dirname "${BASH_SOURCE[0]}")/trestle.sh"

run_log 0 "Validating OSCAL content"
trestle validate -a
