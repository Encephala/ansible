transmission
=========

Sets up transmission VM.

Installs `transmission-gtk`, mounts `/big-store/transmission` and creates a symbolic link to the mount in the user's home directory.

Variables
------------

`transmission_symlink_name=Torrent`.

Requirements
------------

Must be run as root or using `become`.

Dependencies
------------

Role `geerlingguy.firewall` must be present.

Todo
------------

- More robust/general mounting
