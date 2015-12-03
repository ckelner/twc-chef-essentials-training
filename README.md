twc-chef-essentials-training
===============

This is the work I captured during days 1 and 2 of Chef essentials training in ATL 2015/12/01 - 2015/12/02.
The instructors guide (only availble to TWC employees) can be found [by clicking here](https://drive.google.com/open?id=0B7e8h9mtaJSSN1Y2ZWlxeUgwa2J0TDBRVTJRUE1MSlZiZjZJ).

_See the following repos for day 1 activity:_
- _https://github.com/ckelner/twc-chef-training-apache-cookbook_
- _https://github.com/ckelner/twc-chef-training-workstation-cookbook_

Day 1 was comprised of creating recipes, cookbooks, and templates on a remote (EC2) workstation, using the `chef-apply` (using chef-zero [in-memory chef server]) command on that workstation, and running `kitchen` to test those recipes and cookbooks.

Day 2 consisted of more of the same, with the benefit of working from our local dev machine, using a hosted chef server (chef.io), working with the `knife` CLI tool to manipulate remote nodes, and berks to interacte with the hosted chef server.

## Common commands

### From Day 1

Using chef-zero
Work done an a remote EC2 instance supplied by OpsCode.

#### Chef
- `chef generate template <filename>`
- `chef generate cookbook <new cookbook name>`

#### Chef-client
- `chef-client --local-mode -r "recipe[apache]"`

#### Chef-apply
- `chef-apply recipes/<recipe-filename>`

### From Day 2
Using hosted chef
Work done from local workstation instead of remote EC2 instance.

#### Knife
- `knife client list`
- `knife cookbook list`
- `knife bootstrap <ipaddr-hostname> -x user -P pass --sudo -N node1`
  - Adds an existing machine as a node.  Seems janky and something I'd never do.
- `knife node list`
  - Shows all nodes chef server knows about
- `knife node show <nodename>`
  - returns all data about a node
- `knife node run_list add <nodename> "recipe[<receipename>]"`
- `knife node show <nodename> -a <attribute>`
  - Gets specific bits of data about node
- `knife ssh "name:<nodename>" -x <user> -P <pass> "sudo chef-client"`
  - Seems janky.
- `knife role from file <role-filename>`
- `knife role list`
- `knife role show <role-name>`
- `knife node run_list set <nodename> "role[<rolename>]"`
- `knife ssh "role:<rolename>" -x user -P pass "sudo chef-client"`
  - Seems janky.
- `knife environment list`
- `knife environment show <env-name>`
- `knife search node "*:*"`
  - Show all nodes
- `knife node environment set <nodename> <env-name>`

#### Kitchen
- `kitchen test`
- `kitchen verify`

#### Berks
- `berks install`
- `berks upload`
