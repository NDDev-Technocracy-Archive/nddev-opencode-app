set shell := ["bash", "-euo", "pipefail", "-c"]

# Lists the commands.
default:
    @just --list

# Validates the static public contracts and command source without network access.
check:
    just --fmt --check
    python3 -B cli-tools/validate_public_contracts.py

# Runs every source check for this repository.
verify: check
