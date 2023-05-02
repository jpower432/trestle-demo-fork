############################################################################
## Component Definition Custom tasks
############################################################################

scripts_dir :=$(shell realpath $(dir $(lastword $(MAKEFILE_LIST)))../../../scripts)

exportcd:
	@source $(scripts_dir)/export-cd.sh && export-cd
.PHONY: exportcd

update-cd:
	@source $(scripts_dir)/transform.sh && transform_hello-world-csv-oscal-cd
.PHONY: update-cd