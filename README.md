# Ansible

Repo for my ansible config, playbooks and roles.

Vault is `secrets.yml`, password managed by `vault_pass.py` through the Bitwarden CLI.

Majorly tested on Debian, `meta/main.yml` indicates otherwise.


## Roles
- `Gotify_notifier`: Sets up a client to be able to easily use Python to send a notification through my Gotify server.
- `Provision`: Set up a Linux server for my usage
- `Services/<service>`: Set up servers for a specified service.
    - These aren't great (^:
    - Perhaps not much point in setting up a service if I don't have the persistent volumes stored

