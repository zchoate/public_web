#!/bin/bash

# Make sure ACME_EMAIL and REPO_URL are exported prior to running
envsubst < scripts/setup.sh.template > scripts/setup.sh