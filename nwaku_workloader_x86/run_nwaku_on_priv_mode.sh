# variables
source ./.env

# run the waku node
exec sudo ../build/wakunode2_v0.24.0 \
        --relay=true\
        --pubsub-topic=/waku/2/rs/2/0\
        --pubsub-topic=/waku/2/rs/2/1\
        --pubsub-topic=/waku/2/rs/2/2\
        --pubsub-topic=/waku/2/rs/2/3\
        --pubsub-topic=/waku/2/rs/2/4\
        --pubsub-topic=/waku/2/rs/2/5\
        --pubsub-topic=/waku/2/rs/2/6\
        --pubsub-topic=/waku/2/rs/2/7\
        --filter=true\
        --lightpush=true\
        --rpc-admin=true\
        --keep-alive=true\
        --max-connections=150\
        --cluster-id=2\
        --ip-colocation-limit=50\
        --discv5-discovery=true\
        --discv5-udp-port=9005\
        --discv5-enr-auto-update=True\
        --log-level=DEBUG\
        --rpc-port=8545\
        --rpc-address=0.0.0.0\
        --tcp-port=30304\
        --metrics-server=True\
        --metrics-server-port=8003\
        --metrics-server-address=127.0.0.1\
        --rest=true\
        --rest-address=0.0.0.0\
        --rest-port=8645\
        --nat=extip:"${MY_EXT_IP}"\
        --store=true\
        --store-message-db-url="sqlite://../wakustorage.db"\
        --store-message-retention-policy=time:86400\
        --rln-relay=true\
        --rln-relay-membership-index=0
        --rln-relay-dynamic=false\
        --rln-relay-tree-path="/etc/rln_tree_priv"