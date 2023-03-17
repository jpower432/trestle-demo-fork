#!/bin/bash

# SETUP
# Add any setup tasks for the recording here. 

source ./automation/lib/demo-magic.sh
source ./automation/lib/demo-utils.sh

export PATH=$PATH:$PWD/demo-bin

########################
# Configure the options
########################

#
# speed at which to simulate typing. bigger num = faster
#
# TYPE_SPEED=20

#
# custom prompt
#
# see http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/bash-prompt-escape-sequences.html for escape sequences
#
#DEMO_PROMPT="${GREEN}➜ ${CYAN}\W "

# text color
# DEMO_CMD_COLOR=$BLACK

# hide the evidence
#clear

# Intro

function demoIntro() {
  clear
  DEMO_PROMPT=""
  PROMPT_TIMEOUT=1
  p "Title: Control issuer demo"
  p "This demo meets the following objectives:"
  p "1. Add a control to an existing catalog"
  p "2. Submit a pull request"
  p "3. Discover new pull request submitted by automation"
  p "4. Review and merge"

  p "Let's get started!\n"

  clear
}

function edit() {
  DEMO_PROMPT="$ "
  PROMPT_TIMEOUT=2
  pei "git checkout -b feat/adds-cc-3"
  wait
  DEMO_PROMPT="$ "
  PROMPT_TIMEOUT=2
  pei "cat << EOF > ./markdown/catalogs/ACME_custom_controls/cc/cc-3.md
# cc-3 - \[Custom Controls\] Test reporting

## Control Statement

All services must run my test.
EOF"
  wait
  DEMO_PROMPT="$ "
  PROMPT_TIMEOUT=2
  pei "make assemble-catalogs"
  wait
  DEMO_PROMPT="$ "
  PROMPT_TIMEOUT=2
  pei "git add markdown/ catalogs/"
  wait
  pei "git commit -m \"feat: adds-cc-3\""
  wait
  pei "git push -u origin feat/adds-cc-3"
  wait
  pei "gh pr create -t \"feat/adds-cc-3\" -b \"Adds cc-3 to ACME custom catalog\" -B \"main\" -H \"feat/adds-cc-3\""
  wait

  clear
}

function endDemo(){
  DEMO_PROMPT=""
  PROMPT_TIMEOUT=3
  p "\n"
  p "That concludes this demo"
  # show a prompt so as not to reveal our true nature after
  # the demo has concluded
  p ""
}

# Intro
demoIntro
DEMO_PROMPT=""
PROMPT_TIMEOUT=3
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
login /run/secrets/pat
clone "$GIT_REPO"
accessContainer
edit
review
sleep 30
getPR
reviewReady "$PR"
review "$PR"

# End
endDemo