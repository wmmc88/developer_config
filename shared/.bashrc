#!/bin/bash

# Starship
export STARSHIP_CONFIG=$DEV_CONFIG_LINUX_SCRIPT_DIR/../shared/starship_config.toml
eval "$(starship init bash)"