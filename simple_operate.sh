#!/bin/bash

shopt -s expand_aliases

export nall='--all-namespaces'
alias k='kubectl'
k get pods $nall

