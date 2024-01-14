provision
=========

Does first five minutes security, sets up user account, installs packages and sets up dotfiles.
Each part of that can be done separately by specifying the appropriate tag.

Variables
------------

`provision_username`, `provision_userpass` must be defined.

`provision_is_vm` may be defined as true to install qemu guest agent.

`provision_is_desktop` may be defined to configure WSL and ignore server-side dependencies

`provision_copy_private_key` may be defined to copy the SSH private key as well as authorising the public key.

Requirements
------------

System, account and SSH setup must be run with `become`, dotfiles can be run without.

