#!/bin/bash

. ./config.sh

if [ "$OPENSTACK" = "ocata" ]; then
	if [ "$ML2_TYPE" = "vlan" ]; then
		cp config/ocata/answer-compute-vlan.cfg answer-compute.cfg
	elif [ "$ML2_TYPE" = "vxlan" ]; then
		cp config/ocata/answer-compute-vxlan.cfg answer-compute.cfg
	else
		exit
	fi
elif [ "$OPENSTACK" = "pike" ]; then
        if [ "$ML2_TYPE" = "vlan" ]; then
                cp config/queens/answer-compute-vlan.cfg answer-compute.cfg
        elif [ "$ML2_TYPE" = "vxlan" ]; then
                cp config/queens/answer-compute-vxlan.cfg answer-compute.cfg
        else
                exit
        fi
elif [ "$OPENSTACK" = "queens" ]; then
	if [ "$ML2_TYPE" = "vlan" ]; then
		cp config/queens/answer-compute-vlan.cfg answer-compute.cfg
	elif [ "$ML2_TYPE" = "vxlan" ]; then
		cp config/queens/answer-compute-vxlan.cfg answer-compute.cfg
	else
		exit
	fi
else
	exit
fi

sed -i "s/CONTROLLER_NODE/$CONTROLLER_NODE/g" answer-compute.cfg
sed -i "s/COMPUTE_NODE/$COMPUTE_NODE/g" answer-compute.cfg
sed -i "s/EXTERNAL_INTERFACE/$EXTERNAL_INTERFACE/g" answer-compute.cfg
sed -i "s/TUNNEL_INTERFACE/$TUNNEL_INTERFACE/g" answer-compute.cfg
sed -i "s/EXTERNAL_NETWORK/$EXTERNAL_NETWORK.0/g" answer-compute.cfg

# install openstack
sudo packstack --answer-file=answer-compute.cfg
