#!/bin/bash

source venv/bin/activate
cd sara
sudo docker run -p 8000:8000 rasa/duckling &
rasa run --enable-api -p 5005 --cors "*" &
rasa run actions --actions actions.actions &
python3 -m http.server 8888 &
cd ../rasa-voice-interface
npm run serve
