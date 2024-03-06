transmission
=========

Sets up transmission VM.

Currently majorly outdated as I don't use NFS anymore.

Installs `transmission-gtk`, mounts `/big-store/transmission`
and creates a symbolic link to the mount in the user's home directory.

Variables
------------

None

Requirements
------------

Must be run as root or using `become`.

Dependencies
------------

None

Todo
------------

- Just use iptables because idfk how firewalld works and I don't want to learn it
