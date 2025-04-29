#!/bin/bash
python -m venv venv

source ./myenv/bin/activate
pip install jupyterlab

pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install

jupyter lab --generate-config

jupyter lab password



jupyter lab --ip 0.0.0.0 --no-browser

ngrok http --url=pelican-enormous-tightly.ngrok-free.app 8888

pmset -g

sudo pmset -a disablesleep 1

sudo pmset -a disablesleep 0


(jupyter lab --ip 0.0.0.0 --no-browser > jupyter.log 2>&1 & echo $! > pid.txt) && (ngrok http --url=pelican-enormous-tightly.ngrok-free.app 8888 > ngrok.log 2>&1 & echo $! >> pid.txt)


ps -p $(cat pid.txt)

kill $(cat pid.txt)
