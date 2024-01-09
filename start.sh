if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anmol0700k/Advance-EvaMaria1 /Advance-EvaMaria1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advance-EvaMaria1
fi
cd /Advance-EvaMaria1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
