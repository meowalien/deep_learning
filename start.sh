#!/bin/bash
python -m venv myenv

source ./myenv/bin/activate
pip install jupyterlab


jupyter lab --generate-config

jupyter lab password

jupyter lab --ip 0.0.0.0 --no-browser

ngrok http --url=pelican-enormous-tightly.ngrok-free.app 8888