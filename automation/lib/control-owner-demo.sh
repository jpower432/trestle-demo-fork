#!/bin/bash

# SETUP
# Add any setup tasks for the recording here. 

source ./automation/lib/demo-magic.sh

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

function demoIntro(){
  clear
  DEMO_PROMPT="${CYAN}\W "
  PROMPT_TIMEOUT=1
  p "Title: Control owner demo"
  p "This demo meets the following objectives:"
  p "1. Add a guidance to an existing control imported by the profile"
  p "2. Submit a pull request"
  p "3. Discover new pull request submitted by automation"
  p "4. Review and merge"

  p "Let's get started!\n"

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


# End
endDemo