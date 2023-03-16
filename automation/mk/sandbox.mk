############################################################################
## Environment setup
############################################################################

CWD := $(shell cd -P -- '$(shell dirname -- "$0")' && pwd -P)
CMD := "$(shell command -pv podman || command -pv docker)"

############################################################################
### Build the image for demo and sandbox container
############################################################################
demo-build:
	${CMD} build -t localhost:5000/trestle-demo:latest -f Containerfile .
.PHONY: demo-build

############################################################################
### Create demo for control issuer persona
############################################################################
control-issuer-run:
	${CMD} run -v ./docs/recordings:/demo/output -v ./automation/lib:/demo/automation/lib localhost:5000/trestle-demo:latest
.PHONY: control-issuer-run

############################################################################
### Create demo for control owner persona
############################################################################
control-owner-run:
	${CMD} run -v ./docs/recordings:/demo/output -v ./automation/lib:/demo/automation/lib -e "PERSONA=control-owner" localhost:5000/trestle-demo:latest
.PHONY: control-owner-run

############################################################################
### Create demo for control provider persona
############################################################################
control-provider-run:
	${CMD} run -v ./docs/recordings:/demo/output -v ./automation/lib:/demo/automation/lib -e "PERSONA=control-provider" localhost:5000/trestle-demo:latest
.PHONY: control-provider-run

############################################################################
### Run the sandbox container
############################################################################
sandbox-run:
	${CMD} run -it --rm --entrypoint=/demo/automation/lib/sandbox-entrypoint.sh -v ./docs/recordings:/demo/output -v ${CWD}:/demo/trestle-workspace localhost:5000/trestle-demo:latest
.PHONY: sandbox-run

############################################################################
### Install trestle locally
############################################################################
trestle-install:
	@source ./automation/lib/dependencies.sh && install_trestle
.PHONY: trestle-install