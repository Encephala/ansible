transmission
=========

Sets up transmission VM.

Currently majorly outdated as I don't use NFS anymore.

Installs `transmission-gtk`, mounts `/big-store/transmission`
and creates a symbolic link to the mount in the user's home directory.

Variables
------------

`big_store_symlink_name=Torrent`.

Requirements
------------

Must be run as root or using `become`.

Dependencies
------------

Role `geerlingguy.firewall` must be present.

Todo
------------

- More robust/general mounting
