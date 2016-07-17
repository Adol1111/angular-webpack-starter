NVM_SOURCE=~/.nvm/nvm.sh
ifndef JENKINS_HOME
	NVM_SOURCE=`brew --prefix nvm`/nvm.sh
endif
REPO_URL=$(shell git ls-remote --get-url)
# REPO_NAME=$(shell basename $(REPO_URL))
REPO_NAME=AppYunboWeb

.PHONY: build
build:
	cd yunbo; \
	export NVM_DIR=~/.nvm; \
	export REPO_NAME=$(REPO_NAME); \
	export NODE_ENV=$${TAG:0:3}; \
	source $(NVM_SOURCE); \
	nvm use v4.4.3; \
	npm config set registry http://registry.npm.taobao.org; \
	npm install && \
	npm run build;

build-dev:
	export TAG=dev_1; \
	make build;

build-uat:
	export TAG=uat_1; \
	make build;

build-pro:
	export TAG=pro_1; \
	make build;

dev:
	cd yunbo; \
	grunt watch;

tag-dev:
	export TAG=dev_`date +%Y%m%d%H%M`; \
	git tag -a $$TAG; \
	git push origin $$TAG;

tag-uat:
	export TAG=uat_`date +%Y%m%d%H%M`; \
	git tag -a $$TAG; \
	git push origin $$TAG;

tag-pro:
	export TAG=pro_`date +%Y%m%d%H%M`; \
	git tag -a $$TAG; \
	git push origin $$TAG;
