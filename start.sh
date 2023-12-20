if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/dhanush2bot/nobiss.git /nobiss
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /nobiss
fi
cd /nobiss
pip3 install -U -r requirements.txt
echo "Starting.... fuck you man"
python3 bot.py
