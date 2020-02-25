#!/bin/bash
set -e
if [[ "$SUPERVISOR" == "true" ]]; then
	service supervisor start
fi
