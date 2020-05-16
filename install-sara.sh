#!/bin/bash
# virtual env setup
python3 -m venv venv
source venv/bin/activate
pip install -U pip
pip install wheel

# install sara
git clone https://github.com/RasaHQ/rasa-demo.git sara
cd sara
pip install -r requirements.txt
pip install -e .

# put new config file in sara
echo "socketio:" >> credentials.yml
echo "    user_message_evt: user_uttered" >> credentials.yml
echo "    bot_message_evt: bot_uttered" >> credentials.yml
echo "    session_persistence: true/false" >> credentials.yml

ln -s ../socketio_connector.py .
sed -i 's/5005/5055/' endpoints.yml
