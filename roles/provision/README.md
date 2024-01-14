provision
=========

Does first five minutes security, sets up user account, installs packages and sets up dotfiles.
Each part of that can be done separately by specifying the appropriate tag, out of `system`, `account`, `ssh` and `dotfiles`.

Variables
------------

`provision_username`, `provision_userpass` must be defined.

`provision_is_vm` may be defined as true to install qemu guest agent.

`provision_is_desktop` may be defined
- If `true`, install complete dev environment for NVim. Also install WSL config
- If `false`, configure SSHd

`provision_copy_private_key` may be defined to copy the SSH private key as well as authorising the public key.

Requirements
------------

