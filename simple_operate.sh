#!/bin/bash

export nall='--all-namespaces'
alias k='kubectl'
k get pods $nall
