SHELL := /bin/bash

init:
	git submodule init
	git submodule update
	cp content/img/banner.jpg themes/forty/static/img/.
	mkdir -p /home/gitpod/.aws
	cat .aws/config | sed -e "s@CHANGE_ME_REGION@${AWS_DEFAULT_REGION}@g" >/home/gitpod/.aws/config
	cat .aws/credentials | sed -e "s@CHANGE_ME_ACCESS_KEY_ID@${AWS_ACCESS_KEY_ID}@g" | sed -e "s@CHANGE_ME_SECRET_ACCESS_KEY@${AWS_SECRET_ACCESS_KEY}@g" >/home/gitpod/.aws/credentials

build:
	hugo

dev:
	hugo server
