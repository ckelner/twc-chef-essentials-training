twc-chef-training-day-2
===============

Work done from local workstation instead of remote EC2 instance.

# Common commands
## From Day 1
Using chef-zero
### Chef
- `chef generate template <file-name>`
- `chef generate cookbook <new cookbook name>`
### Chef-client
- `chef-client --local-mode -r "recipe[apache]"`
### Chef-apply
- `chef-apply recipes/<recipe-file-name>``
## From Day 2
Using hosted chef
### Knife
- `knife client list`
- `knife cookbook list`
- `knife bootstrap <ipaddr-hostname> -x user -P pass --sudo -N node1`
  - Seems janky and something I'd never do.
- `knife node list`
- `knife node show <nodename>`
- `knife node run_list add <nodename> "recipe[<receipename>]"`
### Kitchen
- `kitchen test`
### Berks
- `berks install`
- `berks upload`
