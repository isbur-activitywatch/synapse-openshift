#!/bin/ash

# # Outer part of script is from here: https://unix.stackexchange.com/a/202276
# if    ls -1A /data | grep -q .
# then  ! echo data is not empty
# else  cp -r /tmp/src/data /data
# fi
mkdir /data2
chmod -R 777 /data2
export SYNAPSE_CONFIG_DIR=/data2
export SYNAPSE_DATA_DIR=/data2
python /start.py generate
echo Before python script
# Fuck the /start.py!!!
python -m synapse.app.homeserver --config-path $SYNAPSE_CONFIG_DIR/homeserver.yaml
