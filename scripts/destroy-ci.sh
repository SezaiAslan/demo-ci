#!/usr/bin/env bash

ProjectName="demo-ci"
RepositoryOwner="SezaiAslan"
RepositoryName="demo-ci"
RepositoryBranch="master"

aws cloudformation delete-stack --stack-name ${ProjectName}-pipeline \
	--parameter-overrides \
		ProjectName="${ProjectName}" \
		RepositoryOwner="${RepositoryOwner}" \
		RepositoryName="${RepositoryName}" \
		RepositoryBranch="${RepositoryBranch}"
