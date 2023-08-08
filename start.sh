if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/iwhiwh/TEGREMOVEBOT /TEGREMOVEBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TEGREMOVEBOT
fi
cd /TEGREMOVEBOT
pip3 install -U -r requirements.txt
echo "Starting TEGREMOVEBOT...."
python3 bot.py
