#!/bin/sh

#
# Name:
# create-stack.sh
#
# Usage:
# create-stack.sh {stack-name} {template-file}
#
# Note:
# template-fileの指定は「file://」を付けないと「Template format error: unsupported structure」というエラーが出て失敗する。
#
# IAMを操作する場合は、--capabilities を設定しないと、以下のエラーが出て失敗する。
# An error occurred (InsufficientCapabilitiesException) when calling the CreateStack operation: Requires capabilities : [CAPABILITY_IAM]
#
# url: https://sqlazure.jp/r/aws/1502/
#

region="ap-northeast-1"

aws cloudformation create-stack --stack-name $1 --region $region --template-body $2 --capabilities CAPABILITY_NAMED_IAM
