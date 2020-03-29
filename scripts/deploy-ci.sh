#!/usr/bin/env bash

ProjectName="demo-ci"
RepositoryOwner="SezaiAslan"
RepositoryName="demo-api"
RepositoryBranch="master"

aws cloudformation deploy --stack-name ${ProjectName}-pipeline \
	--no-fail-on-empty-changeset \
	--capabilities CAPABILITY_NAMED_IAM CAPABILITY_IAM \
  --template-file cf-templates/pipeline.yaml \
	--parameter-overrides \
		ProjectName="${ProjectName}" \
		RepositoryOwner="${RepositoryOwner}" \
		RepositoryName="${RepositoryName}" \
		RepositoryBranch="${RepositoryBranch}"
