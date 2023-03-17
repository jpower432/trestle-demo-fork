#!/bin/bash

source ./automation/lib/demo-magic.sh

function clone() {
  DEMO_PROMPT=""
  PROMPT_TIMEOUT=3
  pei "git clone $1 trestle-workspace"
  wait

  clear
}

function accessContainer() {
  DEMO_PROMPT=""
  PROMPT_TIMEOUT=3
  p "make demo-build"
  p "make sandbox-run"
  pei "cd trestle-workspace"
  wait

  clear
}

function login() {
  gh auth login --with-token < "$1"
  gh auth setup-git
}

function review() {
  DEMO_PROMPT=""
  PROMPT_TIMEOUT=3
  pei "gh pr view $1"
  wait
  pei "gh pr merge --merge $1"
  wait

  clear
}

function getPR () {
  DEMO_PROMPT=""
  PROMPT_TIMEOUT=3
  pei "export PR=$(gh pr list --draft | awk '{print $1}')"
  wait

  clear
}

function reviewReady() {
    DEMO_PROMPT=""
    PROMPT_TIMEOUT=3
    pei "gh pr diff $1"
    wait
    pei "gh pr ready $1"
    wait

    clear
}