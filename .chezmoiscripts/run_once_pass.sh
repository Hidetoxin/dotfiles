#!/bin/bash

# SAVE SECRETS LOCALLY
bw get item 'StandardNotes' | jq -r '.login.username' | pass insert --echo --force 'sn/mail'
bw get item 'StandardNotes' | jq -r '.login.password' | pass insert --echo --force 'sn/pass'
