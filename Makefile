include ./automation/mk/*.mk

REPO := https://github.com/jpower432/oscal-automation-libs.git
BRANCH := chore/initial-setup

update-subtree:
	@git subtree pull --prefix automation/ "$(REPO)" "$(BRANCH)" --squash
.PHONY: update-subtree
