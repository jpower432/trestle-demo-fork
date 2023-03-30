############################################################################
## Filter Workflow
############################################################################

############################################################################
### Filter an existing SSP based on a component definition
############################################################################

filter-ssp:
	@source ./automation/trestle.sh && trestle author ssp-filter --name acme_custom_demo_ssp --components hello-world-custom -o markdown/system-security-plans/acme_custom_demo_filter_ssp
.PHONY: filer-ssp