#!/bin/sh

#
# Name:
# delete-stack.sh
#
# Usage:
# delete-stack.sh {stack-name}
#

region="ap-northeast-1"

aws cloudformation delete-stack --stack-name $1
