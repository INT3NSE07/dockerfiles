#!/bin/sh
tf2/srcds_run -console -game tf -autoupdate -steam_dir ~/hlserver -steamcmd_script ~/hlserver/tf2_ds.txt -port 27015 +clientport 27005 +hostport 27015 +mapcyclefile mapcycle_quickplay_payload.txt +map plr_hightower +maxplayers 8 $@

