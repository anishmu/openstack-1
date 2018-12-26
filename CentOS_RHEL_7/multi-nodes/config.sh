#!/bin/bash

#OPENSTACK=ocata
#OPENSTACK=pike
OPENSTACK=queens

ML2_TYPE=vlan
#ML2_TYPE=vxlan

CONTROLLER_NODE=192.168.0.254
COMPUTE_NODE=192.168.0.251,192.168.0.252

MANAGEMENT_INTERFACE=eth0
EXTERNAL_INTERFACE=eth1
TUNNEL_INTERFACE=eth2

EXTERNAL_NETWORK=172.16.0
IP_POOL_START=$EXTERNAL_NETWORK.101
IP_POOL_END=$EXTERNAL_NETWORK.200
EXTERNAL_GW_ADDRESS=$EXTERNAL_NETWORK.1
EXTERNAL_IP_ADDRESS=$EXTERNAL_NETWORK.254

INTERNAL_NETWORK=10.0.0
VIP_POOL_START=$INTERNAL_NETWORK.101
VIP_POOL_END=$INTERNAL_NETWORK.200
INTERNAL_GW_ADDRESS=$INTERNAL_NETWORK.1

DNS_NAMESERVER=8.8.8.8