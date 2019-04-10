pssh -t 10000000 -h server/nodeset-server-worker "~/AEON/server/contextrun ~/AEON/server/params.default > ~/AEON/server/output" & 
sleep 20
pssh -t 10000000 -h server/nodeset-server-head "~/AEON/server/contextrun ~/AEON/server/params.default > ~/AEON/server/output" & 

