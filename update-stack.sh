#!/bin/sh

#
# Name:
# update-stack.sh
#
# Usage:
# update-stack.sh {stack-name} {template-file}
#
# Note:
# template-fileの指定は「file://」を付けないと「Template format error: unsupported structure」というエラーが出て失敗する。
#
# url: https://sqlazure.jp/r/aws/1502/
#

region="ap-northeast-1"

aws cloudformation update-stack --stack-name $1 --region $region --template-body $2 --capabilities CAPABILITY_NAMED_IAM
