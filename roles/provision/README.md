provision
=========

Does first five minutes security, sets up user account, installs packages and sets up dotfiles.
Each part of that can be done separately by specifying the appropriate tag.

Variables
------------

`username`, `userpass` must be defined.

`is_vm` may be defined as true to install qemu guest agent.

`is_wsl` may be defined to set WSL to use systemd.

`copy_private_key` may be defined to copy the SSH private key as well as authorising the public key.

Requirements
------------

System, account and SSH setup must be run with `become`, dotfiles can be run without.

