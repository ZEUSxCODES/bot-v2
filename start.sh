if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ZEUSxCODES/bot-v2 /bot-v2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /bot-v2
fi
cd /bot-v2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
