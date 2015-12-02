twc-chef-training-day-2
===============

Work done from local workstation instead of remote EC2 instance.

# Common commands
## Chef
- `chef generate template <file-name>`
- `chef generate cookbook <new cookbook name>`
## Chef-client
- `chef-client --local-mode -r "recipe[apache]"`
## Chef-apply
- `chef-apply recipes/<recipe-file-name>``
## Knife
- `knife client list`
- `knife cookbook list`
## Kitchen
- `kitchen test`
