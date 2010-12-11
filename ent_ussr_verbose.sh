#!/usr/bin/env zsh

server=`cat servers.lst | sort -R | head -n1`

echo $server;
./ent_ussr_exchange.sh $server

