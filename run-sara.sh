#!/bin/bash

source venv/bin/activate
cd sara
sudo docker run -p 8000:8000 rasa/duckling &
rasa run actions --actions actions.actions &
