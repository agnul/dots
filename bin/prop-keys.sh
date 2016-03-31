#!/usr/bin/env bash

sed '/^\s*[#!]/d; /^\s*$/d; :x; /\\$/ { N; s/^\s+//; s/\\\n//; tx }' $* | cut -d "=" -f1
