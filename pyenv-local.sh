#!/bin/bash

# The first argument is the Python version
PYTHON_VERSION=$1
# The second argument is the virtual environment name
VENV_NAME=$2

# Install the specified Python version if it's not already installed
if ! pyenv versions | grep $PYTHON_VERSION; then
  pyenv install $PYTHON_VERSION
fi

# Set the local Python version
pyenv local $PYTHON_VERSION

# Install/upgrade pip
pip install --upgrade pip

# Check if virtualenv is installed, if not, install it
if ! pip list | grep virtualenv; then
  pip install virtualenv
fi

# Create the virtual environment
virtualenv $VENV_NAME

echo "To activate the virtual environment, run: source $VENV_NAME/bin/activate"
