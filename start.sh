if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Albinmanoj1/ttssee.git /ttssee
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ttssee
fi
cd /ttssee
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
