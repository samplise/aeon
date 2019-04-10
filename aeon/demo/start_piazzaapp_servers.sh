~/My_Disk/software/pssh-2.3.1/bin/pssh -l ubuntu -t 10000000 -h server/nodeset-server-worker "/home/ubuntu/Experiments/ElasticMemcached/Server/contextrun /home/ubuntu/Experiments/ElasticMemcached/Server/params.default > /home/ubuntu/Experiments/ElasticMemcached/Server/output" & 
sleep 10
~/My_Disk/software/pssh-2.3.1/bin/pssh -l ubuntu -t 10000000 -h server/nodeset-server-head "/home/ubuntu/Experiments/ElasticMemcached/Server/contextrun /home/ubuntu/Experiments/ElasticMemcached/Server/params.default > /home/ubuntu/Experiments/ElasticMemcached/Server/output" & 

