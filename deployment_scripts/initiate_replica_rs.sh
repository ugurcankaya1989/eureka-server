#!/bin/bash

echo "Starting replica set initialize"
until mongo --host mongo-rs-db1 --eval "print(\"waited for connection\")"
do
    sleep 2
done
echo "Connection finished"
echo "Creating replica set"
mongo --host mongo-rs-db1 <<EOF
rs.initiate(
  {
    _id : 'rs0',
    members: [
      { _id : 0, host : "mongo-rs-db1:27017" },
      { _id : 1, host : "mongo-rs-db2:27017" },
      { _id : 2, host : "mongo-rs-db3:27017" }
    ]
  }
)
EOF
echo "replica set created"