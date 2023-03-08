#!/usr/bin/env bash
set -ex

wget https://dlcdn.apache.org/cassandra/4.1.0/apache-cassandra-4.1.0-bin.tar.gz

tar -xf apache-cassandra-4.1.0-bin.tar.gz -C /opt/
chown -R mki.mki /opt/apache-cassandra-4.1.0
rm apache-cassandra-4.1.0-bin.tar.gz

# Desktop Icon
