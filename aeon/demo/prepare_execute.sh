#!/bin/bash

# This script generates params.default for multi-nodes:

#if [ $# -ne 1 ]; then
#	echo "Usage: exec flag"
#	exit 1
#fi

client_nodes="client/nodeset-client"
head_node="server/nodeset-server-head"
worker_nodes="server/nodeset-server-worker"
flag=1

cur_nodeId=1
while read node
do
	echo "Copy client files to $cur_nodeId:${node}"
	if [ $flag -eq 1 ]; then
		scp contextrun ${node}:~/AEON/client/
	fi
	scp client/params.default.client$cur_nodeId ${node}:~/AEON/client/params.default
	cur_nodeId=$(( $cur_nodeId+1 ))
done < $client_nodes

while read node
do
	echo "Copy server files to $cur_nodeId:${node}"
	if [ $flag -eq 1 ]; then
		scp contextrun ${node}:~/AEON/server/
	fi
	scp server/params.default ${node}:~/AEON/server/
	cur_nodeId=$(( $cur_nodeId+1 ))
done < $head_node

while read node
do
	echo "Copy server files to $cur_nodeId:${node}"
	if [ $flag -eq 1 ]; then
		scp contextrun ${node}:~/AEON/server/
	fi
	scp server/params.default ${node}:~/AEON/server/
	cur_nodeId=$(( $cur_nodeId+1 ))
done < $worker_nodes







