source venv/bin/activate
git clone https://github.com/mozilla/TTS.git
cd TTS
git fetch --all
git checkout ljspeech-tacotron-iter-185K
pip install -r requirements.txt
python setup.py develop
