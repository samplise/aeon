killall pssh

/u/antor/u24/bsang/My_Disk/software/pssh-2.3.1/bin/pssh -l ubuntu -h client/nodeset-client killall contextrun
/u/antor/u24/bsang/My_Disk/software/pssh-2.3.1/bin/pssh -l ubuntu -h server/nodeset-server-worker killall contextrun
/u/antor/u24/bsang/My_Disk/software/pssh-2.3.1/bin/pssh -l ubuntu -h server/nodeset-server-head killall contextrun
