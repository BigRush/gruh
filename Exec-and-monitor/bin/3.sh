#!/bin/bash

function openports {
	netstat -lntu
}

function conhard {
	lsusb
}

function conusers {
	who
}

function storage {
	df
}

function main {
	openports
	conhard
	conusers
	storage
}

main |tee -a .log
