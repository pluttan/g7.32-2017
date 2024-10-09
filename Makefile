SHELL := /bin/bash

unameOut := $(shell uname -s)

ifeq ($(unameOut),Linux)
    dataLib := $(HOME)/.local/share
    dataConf := $(HOME)/.config
else ifeq ($(unameOut),Darwin)
    dataLib := $(HOME)/Library/Application\ Support
    dataConf := $(HOME)/.config
else ifeq ($(unameOut),CYGWIN*)
    dataLib := %APPDATA%
    dataConf := %APPDATA%
else ifeq ($(unameOut),MINGW*)
    dataLib := %APPDATA%
    dataConf := %APPDATA%
else ifeq ($(unameOut),MSYS_NT*)
    dataLib := %APPDATA%
    dataConf := %APPDATA%
else
    $(error unknown os)
endif

dataLib := $(dataLib)/typst/packages/docs
gost_package := $(dataLib)/gost7.32-2017/0.1.1

.PHONY: all install theme themeList
all: install

install: create_dir_lib copy_files create_dir_conf config

create_dir_lib:
	@mkdir -p $(gost_package)

copy_files:
	@cp -r $(dir $(lastword $(MAKEFILE_LIST)))gost7.32-2017/* $(gost_package)

create_dir_conf:
	@mkdir -p $(dataConf)/typst

config:
	@rm $(dataConf)/typst/g7.32-2017.config.typ
	@ln -s $(gost_package)/g7.32-2017.config.typ $(dataConf)/typst/

theme:
	@if [ -z "$$1" ]; then \
		echo "Error: You must provide a theme as .tmTheme file"; \
		exit 1; \
	fi
	@cp "$$1" $(gost_package)/themes

themeList:
	@ls $(gost_package)/themes
