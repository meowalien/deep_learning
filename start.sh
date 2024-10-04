#!/bin/bash
python -m venv myenv
pip install jupyterlab
source ./myenv/bin/activate
jupyter lab
