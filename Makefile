SHELL := /bin/bash

init:
	git submodule init
	git submodule update
	cp content/img/banner.jpg themes/forty/static/img/.
	mkdir -p /home/gitpod/.aws

build:
	hugo

dev:
	hugo server
