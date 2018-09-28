#!/bin/bash

OPENSTACK=ocata
#OPENSTACK=pike
#OPENSTACK=queens

ML2_TYPE=vlan
#ML2_TYPE=vxlan

CONTROLLER_NODE=192.168.0.251

MANAGEMENT_INTERFACE=eth0
BRIDGE_INTERFACE=eth1
BRIDGE_IP_ADDRESS=172.16.0.251
BRIDGE_GW_ADDRESS=172.16.0.1

EXTERNAL_NETWORK=172.16.0.0
IP_POOL_START=172.16.0.101
IP_POOL_END=172.16.0.200
IP_GW_ADDRESS=172.16.0.1

INTERNAL_NETWORK=10.0.0.0
VIP_POOL_START=10.0.0.101
VIP_POOL_END=10.0.0.200
VIP_GW_ADDRESS=10.0.0.1

DNS_NAMESERVER=8.8.8.8