############################################################################
## Custom Workflow
############################################################################

scripts_dir :=$(shell realpath $(dir $(lastword $(MAKEFILE_LIST)))../../../scripts)

generate-custom-ssp:
	@source $(scripts_dir)/trestle.sh && trestle author ssp-generate -p ACME_internal_profile --compdefs hello-world-custom -o markdown/system-security-plans/acme_custom_demo_ssp -f
.PHONY: generate-custom-ssp