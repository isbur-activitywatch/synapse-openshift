# Outer part of script is from here: https://unix.stackexchange.com/a/202276
if    ls -1qA /data | grep -q .
then  ! echo data is not empty
else  cp /tmp/src /data
fi
python /start.py
