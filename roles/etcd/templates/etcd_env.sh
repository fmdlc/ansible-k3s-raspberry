#!/bin/bash

## Use this script to load etcd environment in order to make easy the use
## of etcdctl.
## Usage: $: source ./etcd_env.sh

export ETCDCTL_API=3
export ETCDCTL_CACERT="{{ etcd.initial_ca_dir }}/ca.pem"
export ETCDCTL_CERT="{{ etcd.initial_ca_dir }}/{{ inventory_hostname.split('.') | first }}.pem"
export ETCDCTL_KEY="{{ etcd.initial_ca_dir }}/{{ inventory_hostname.split('.') | first }}-key.pem"
export ETCDCTL_ENDPOINTS="https://node-1:2379,https://node-2:2379,https://node-3:2379"
