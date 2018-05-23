echo "Switch off Jack..."
killall jackd &> /dev/null

echo "Switch on ALSA..."
cp $SCRIPTSPATH/Bash/Audio/ALSA/Analog ~/.asoundrc
cp $SCRIPTSPATH/Bash/Audio/ALSA/PCHVol.sh $SCRIPTSPATH/Bash/Audio/ALSA/VolControl.sh

echo "Start jack as root..."
sudo jackd -R -P89 -dalsa -dhw:PCH -r192000 -p512 -n4 &
sleep 5

echo "Start rackarrack..."
sudo rakarrack

echo "Stop Jack (root instance)..."
sudo killall jackd

echo "Done."
