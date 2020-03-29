#!/usr/bin/env bash

ProjectName="demo-ci"
RepositoryOwner="SezaiAslan"
RepositoryName="demo-ci"
RepositoryBranch="master"

aws cloudformation deploy --stack-name ${ProjectName}-pipeline \
	--no-fail-on-empty-changeset \
  --template-file cf-templates/pipeline.yaml \
	--parameter-overrides \
		ProjectName="${ProjectName}" \
		RepositoryOwner="${RepositoryOwner}" \
		RepositoryName="${RepositoryName}" \
		RepositoryBranch="${RepositoryBranch}"
