#!/usr/bin/env bash

PURPLE='\033[1;35m'
BLUE='\033[0;34m'
BOLD='\033[1m'
RESET='\033[0m'
OS_NAME=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')

echo -e This system is running ${PURPLE}${BOLD}${OS_NAME}${RESET}
echo -e To update the system, enter: ${BLUE}${BOLD}ujust update${RESET}
