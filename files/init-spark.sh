#!/bin/bash

set +ex

sleep 10

$SPARK_HOME/sbin/start-thriftserver.sh --packages io.delta:delta-core_2.11:0.6.1 --master "local[2]" --hiveconf hive.server2.thrift.port=10001 | tee /tmp/output.txt

/usr/bin/tail -f $(cat /tmp/output.txt | cut -d' ' -f 5)
