if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/chaitanyababuvcb1/movies-bot.git /movies-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /movies-bot
fi
cd /movies-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 -m bot.py
