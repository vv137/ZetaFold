#!/usr/bin/env bash

# Initialize GitHub authentication
echo $GITHUB_TOKEN | gh auth login --with-token

# Setup Git configurations
git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_EMAIL

# Disable virtual environments
poetry config virtualenvs.create false

# Install Dependencies
poetry install --all-extras  # --with dev

# Install pre-commit hooks
poetry run pre-commit install --install-hooks
