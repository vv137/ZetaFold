#!/usr/bin/env bash

# Disable virtual environments
poetry config virtualenvs.create false

# Install Dependencies
poetry install --all-extras  # --with dev

# Install pre-commit hooks
poetry run pre-commit install --install-hooks
