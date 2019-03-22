#!/usr/bin/env bash

_confirm() {
	while read -p "$1? [Y/n] " REPLY; do
		if [[ $REPLY =~ ^[Yy]$ ]]; then
			return 0;
		elif [[ $REPLY =~ ^[Nn]$ ]]; then
			return 1;
		fi
	done
}

_prompt() {
	while read -p "$1: " MSG; do
		if [[ $MSG != "" ]]; then
			echo $MSG; break
		fi
	done
}
