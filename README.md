# CSGO FTP management

Some bash scripts and configs I use for managing servers to which I only
have TCAdmin and FTP access.

Run `mirror.sh` to sync local files with what's on the servers.

Now you can run a `git diff` to see what might've changed remotely
somehow since the last sync.

Run `update-local-files.sh` to update the local files with the templates
we have in the root of the repo. (`gamemode_competitive_server.cfg` is
the same for all servers, but `server.cfg` changes)

Make sure you stage any changes you might have locally before the next
step, then run `update-servers.sh` to `wput`("deploy") the new changes on the servers.

### Notes:

Get tokens [here](http://steamcommunity.com/dev/managegameservers)

Get ESL config [here](http://play.eslgaming.com/download/26251762/)
