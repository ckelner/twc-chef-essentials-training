#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

#node.default['haproxy']['members'] = [
#  {
#    'hostname' => 'ec2-52-91-184-195.compute-1.amazonaws.com',
#    'ipaddress' => '52.91.184.195',
#    'port' => 80,
#    'ssl_port' => 80
#  },
#  {
#    'hostname' => 'ec2-107-21-58-154.compute-1.amazonaws.com',
#    'ipaddress' => '107.21.58.154',
#    'port' => 80,
#    'ssl_port' => 80
#  }
#]

all_web_nodes = search('node','role:web')
members = []

all_web_nodes.each do |web_node|
  member = {
    'hostname' => web_node['cloud']['public_hostname'],
    'ipaddress' => web_node['cloud']['public_ipv4'],
    'port' => 80,
    'ssl_port' => 80
  }
  members.push(member)
end

node.default['haproxy']['members'] = members

include_recipe 'haproxy::default'
