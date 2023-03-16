#!/bin/bash

#Launch the recording

asciinema rec -c ./automation/lib/"$PERSONA"-demo.sh ./output/"$PERSONA"-recording-$(date +%s)