#!/bin/bash
echo "compiling NWAKU"

# update the vendor dependencies
make -j4 update

# compile the wakunode2 binary
date > compiling_logs.txt
make -j4 wakunode2 >> compiling_logs.txt
date >> compiling_logs.txt

echo "finished"