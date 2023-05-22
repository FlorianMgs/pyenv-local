# PyEnv-Local Setup Guide

This script creates a Python virtual environment in current working directory using pyenv with a specified Python version. 

## Prerequisites

- [Pyenv](https://github.com/pyenv/pyenv) should be installed.

## Installation Steps

1. Clone the repo or download `pyenv-local.sh`.
2. Move the script to a location in your PATH:

    ```bash
    mv pyenv-local.sh /usr/local/bin/pyenv-local
    chmod +x /usr/local/bin/pyenv-local
    ```

3. Create the `py` alias:

    ```bash
    echo 'alias py="/usr/local/bin/pyenv-local"' >> ~/.bashrc
    source ~/.bashrc
    ```

## Usage

```bash
py <python_version> <venv_name>
```

For example: `py 3.11.3 myenv`
