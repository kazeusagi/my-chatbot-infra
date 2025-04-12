#!/bin/bash

# ./plan.sh $1
# $1: 環境名(dev, stg, prd)

# 引数の検証
if [[ "$1" =~ ^(dev|stg|prod)$ ]]; then
  echo "Valid: ${1}環境に対してPlanを実行します"
else
  echo "Error: 引数は 'dev', 'stg', 'prod' のいずれかを指定してください"
  exit 1
fi

# Init
(
  # sharedプロファイルで実行
  export AWS_PROFILE="shared"
  cd terraform/environment/$1
  terraform init -reconfigure
)

# Plan
(
  # adminプロファイルで実行
  export AWS_PROFILE="admin"
  cd terraform/environment/$1
  terraform plan
)
