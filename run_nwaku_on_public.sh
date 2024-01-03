# variables
source ./.env

# run the waku node
exec sudo ./build/wakunode2_v0.23.0 \
        --relay=true\
        --pubsub-topic=/waku/2/rs/1/0\
        --pubsub-topic=/waku/2/rs/1/1\
        --pubsub-topic=/waku/2/rs/1/2\
        --pubsub-topic=/waku/2/rs/1/3\
        --pubsub-topic=/waku/2/rs/1/4\
        --pubsub-topic=/waku/2/rs/1/5\
        --pubsub-topic=/waku/2/rs/1/6\
        --pubsub-topic=/waku/2/rs/1/7\
        --filter=true\
        --lightpush=true\
        --rpc-admin=true\
        --keep-alive=true\
        --max-connections=150\
        --cluster-id=1\
        --discv5-bootstrap-node="enr:-QESuEC1p_s3xJzAC_XlOuuNrhVUETmfhbm1wxRGis0f7DlqGSw2FM-p2Ugl_r25UHQJ3f1rIRrpzxJXSMaJe4yk1XFSAYJpZIJ2NIJpcISygI2rim11bHRpYWRkcnO4XAArNiZub2RlLTAxLmRvLWFtczMud2FrdS50ZXN0LnN0YXR1c2ltLm5ldAZ2XwAtNiZub2RlLTAxLmRvLWFtczMud2FrdS50ZXN0LnN0YXR1c2ltLm5ldAYfQN4DgnJzkwABCAAAAAEAAgADAAQABQAGAAeJc2VjcDI1NmsxoQJATXRSRSUyTw_QLB6H_U3oziVQgNRgrXpK7wp2AMyNxYN0Y3CCdl-DdWRwgiMohXdha3UyDw"\
        --discv5-bootstrap-node="enr:-QEkuECnZ3IbVAgkOzv-QLnKC4dRKAPRY80m1-R7G8jZ7yfT3ipEfBrhKN7ARcQgQ-vg-h40AQzyvAkPYlHPaFKk6u9uAYJpZIJ2NIJpcIQiEAFDim11bHRpYWRkcnO4bgA0Ni9ub2RlLTAxLmdjLXVzLWNlbnRyYWwxLWEud2FrdS50ZXN0LnN0YXR1c2ltLm5ldAZ2XwA2Ni9ub2RlLTAxLmdjLXVzLWNlbnRyYWwxLWEud2FrdS50ZXN0LnN0YXR1c2ltLm5ldAYfQN4DgnJzkwABCAAAAAEAAgADAAQABQAGAAeJc2VjcDI1NmsxoQMIJwesBVgUiBCi8yiXGx7RWylBQkYm1U9dvEy-neLG2YN0Y3CCdl-DdWRwgiMohXdha3UyDw"\
        --discv5-bootstrap-node="enr:-QEkuEDzQyIAhs-CgBHIrJqtBv3EY1uP1Psrc-y8yJKsmxW7dh3DNcq2ergMUWSFVcJNlfcgBeVsFPkgd_QopRIiCV2pAYJpZIJ2NIJpcIQI2ttrim11bHRpYWRkcnO4bgA0Ni9ub2RlLTAxLmFjLWNuLWhvbmdrb25nLWMud2FrdS50ZXN0LnN0YXR1c2ltLm5ldAZ2XwA2Ni9ub2RlLTAxLmFjLWNuLWhvbmdrb25nLWMud2FrdS50ZXN0LnN0YXR1c2ltLm5ldAYfQN4DgnJzkwABCAAAAAEAAgADAAQABQAGAAeJc2VjcDI1NmsxoQJIN4qwz3v4r2Q8Bv8zZD0eqBcKw6bdLvdkV7-JLjqIj4N0Y3CCdl-DdWRwgiMohXdha3UyDw"\
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
        --store-message-db-url="sqlite://wakustorage.db"\
        --store-message-retention-policy=time:86400\
        --rln-relay=true\
        --rln-relay-dynamic=true\
        --rln-relay-eth-contract-address="${RLN_RELAY_CONTRACT_ADDRESS}"\
        --rln-relay-eth-client-address="${ETH_CLIENT_ADDRESS}"\
        --rln-relay-tree-path="/etc/rln_tree"\
        --rln-relay-cred-path="/keystore/keystore.json"
