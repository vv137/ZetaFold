#!/usr/bin/env bash

# Install Dependencies
poetry install --all-extras  # --with dev

# Install pre-commit hooks
poetry run pre-commit install --install-hooks
