#!/usr/bin/env python3
"""
Vault password script for use with Ansible

Requires Bitwarden CLI to be installed (https://bitwarden.com/help/cli/),
and configured using `bw config server ...`
"""

import subprocess
import json
import sys
import argparse

PIPE = subprocess.PIPE

# Wrapper to make it simpler to call subprocess.run
def run_command(command, **kwargs):
    return subprocess.run(command.split(), **kwargs)


# Response strings that Bitwarden CLI returns
BW_RESP_UNATH = "unauthenticated"
BW_RESP_LOGGED_IN = "You are logged in!"


# Parse stdin
parser = argparse.ArgumentParser()
parser.add_argument("--vault-id", action = "store", default = "Ansible vault", dest = "vault_id")

vault_id = parser.parse_args().vault_id


# If unauthenticated, log in then unlock
status = json.loads(run_command("bw status", stdout = PIPE).stdout)["status"]

if status == BW_RESP_UNATH:
    # Write to stderr because Ansible expects
    # only the password to be written to stdout
    print("Log in to Bitwarden:", file = sys.stderr)

    # We lose pretty formatting with stdout = PIPE,
    # but it's the only way to capture stdout
    response = run_command("bw login", stdout = PIPE).stdout.decode()

    # If logging in failed, exit
    if not(response.split("\n")[0] == BW_RESP_LOGGED_IN):
        exit(1)


# Get the password
print("Unlock Bitwarden:", file = sys.stderr)

# This prints the password to stdout
run_command(f"bw get password {vault_id}")

