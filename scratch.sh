#!/bin/bash

last_diff=$(git diff --name-only --pretty="" HEAD HEAD~1)
echo "$last_diff"
