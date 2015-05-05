#!/bin/bash
export ETCDCTL_PEERS="https://localhost:2379"
export ETCDCTL_CERT_FILE=/etc/etcd/phyhost2.crt
export ETCDCTL_KEY_FILE=/etc/etcd/phyhost2.key.insecure
export ETCDCTL_CA_FILE=/etc/etcd/ca.crt
etcdctl "$@"
unset ETCDCTL_PEERS
unset ETCDCTL_CERT_FILE
unset ETCDCTL_KEYFILE
unset ETCDCTL_CA_FILE
