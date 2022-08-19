#!/bin/bash

# First, we need to create a stack from cloudformation/aws-jenkins-stack.json file
# Next step is to get ssh private key from AWS Parameter store, write it to some tmp location and add it
# Then we should get cloudformation stack output with Jenkins VM ip value and update playbook with it
# Run playbook to setup jenkins
# Get cloudformation stack output with LB DNS name value
# Cleanup (add parameter to cleanup in case of interruption). We also need to cleanup S3 where cloudformation data stored.

aws cloudformation create-stack --stack-name jenkins --template-body file://cloudformation/aws-jenkins-stack.json