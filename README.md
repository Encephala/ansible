# Ansible

My ansible playbooks and roles.

Vault password managed by `vault_pass.py` through the [Bitwarden CLI](https://bitwarden.com/help/cli/).

Only work on Debian(-based) systems.

Reminder dependencies are installed via `ansible-galaxy install -r requirements.yaml`.

## Roles

- `Gotify_notifier`: Sets up a client to be able to easily use Python to send a
notification through my Gotify server.
- `Provision`: Set up a Linux system for my usage
- `Services/<service>`: Set up servers for a specified service.
  - These aren't great (^:
  - Perhaps not much point in setting up a service if I don't have the
  persistent volumes stored

## TODO

- Fix rustup install
- Separate provision into server and desktop
- Add .mdlrc to dotfiles
- Add yamllint config to dotfiles
