#!/usr/bin/env bash

DEV_CONFIG_SHARED_SCRIPT_DIR=$(dirname $BASH_SOURCE)

# Starship
export STARSHIP_CONFIG=$DEV_CONFIG_SHARED_SCRIPT_DIR/starship_config.toml
eval "$(starship init bash)"