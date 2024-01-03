#!/bin/bash

# Define the start and end of the range
start=1
end=20

# Loop over the range spawning one docker instance per
for i in $(seq $start $end)
do
   port=$((4000 + i))
   docker run -d -p $port:8645 harbor.status.im/wakuorg/nwaku:v0.24.0 --relay=true --pubsub-topic=/waku/2/rs/2/0 --pubsub-topic=/waku/2/rs/2/1 --pubsub-topic=/waku/2/rs/2/2 --pubsub-topic=/waku/2/rs/2/3 --pubsub-topic=/waku/2/rs/2/4 --pubsub-topic=/waku/2/rs/2/5 --pubsub-topic=/waku/2/rs/2/6 --pubsub-topic=/waku/2/rs/2/7 --cluster-id=2 --log-level=DEBUG --rest=true --rest-admin=true --rest-address=0.0.0.0 --rln-relay=true --rln-relay-dynamic=false --staticnode="/ip4/83.51.248.196/tcp/30304/p2p/16Uiu2HAm3rh5XuWCpBTpZWLukXmpnXiw14v6Yvp69n1ndJRw93Eu" --rln-relay-membership-index=$i &
done