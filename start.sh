#!/bin/bash
python -m venv myenv

source ./myenv/bin/activate
pip install jupyterlab

jupyter lab
