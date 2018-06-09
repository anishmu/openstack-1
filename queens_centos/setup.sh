#!/bin/bash

# step 0: prerequisites

systemctl disable firewalld
systemctl stop firewalld

systemctl disable NetworkManager
systemctl stop NetworkManager

systemctl enable network
systemctl start network

# step 1: software repositories

# set up QUEENS
#yum install -y centos-release-openstack-queens

# update repositories
yum update

# step 2: install packstack installer

yum install -y openstack-packstack

# step 3: run packstack to install openstack

packstack --answer-file=answer.txt

# step 4: build a key to access VMs

cd ~
ssh-keygen -t rsa -f cloud.key
