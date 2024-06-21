# Ansible

My ansible playbooks and roles.

~~Vault password managed by `vault_pass.py` through the [Bitwarden CLI](https://bitwarden.com/help/cli/).~~
Yeah nah that was too much effort, screw typing the password every time.

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

- Add diff-so-fancy back to plugins (I thought this wasn't necessary but it is)
- Update provision to have characters for Alien VCS_DIRTY section rather than illegible symbols
- Make provision not install all LSPs for nvim when not `is_desktop`
- Fix dotfiles to have the option to not install all the bulk that is Cargo (maybe just don't install zoxide xd)

## Installing Ansible with pipx

Leaving this here for future me

```bash
pipx install --include-deps ansible
pipx inject ansible passlib
pipx inject ansible ansible-lint --include-apps
```
