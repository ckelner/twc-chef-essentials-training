twc-chef-training-day-2
===============

Work done from local workstation instead of remote EC2 instance.

# Common commands

## From Day 1
Using chef-zero

### Chef
- `chef generate template <filename>`
- `chef generate cookbook <new cookbook name>`

### Chef-client
- `chef-client --local-mode -r "recipe[apache]"`

### Chef-apply
- `chef-apply recipes/<recipe-filename>``

## From Day 2
Using hosted chef

### Knife
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

### Kitchen
- `kitchen test`
- `kitchen verify`

### Berks
- `berks install`
- `berks upload`
