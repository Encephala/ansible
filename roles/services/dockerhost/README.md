dockerhost
=========

Sets up VM as a host for various docker applications



Variables
------------

`dockerhost_socket_network_name` is the name of the network in which the Docker socket proxy lives

Requirements
------------

Must be run as root or using `become`.

Dependencies
------------

Role `geerlingguy.docker` must be present.

Todo
------------

- Config directories overzetten
- cron job voor backup als root, notification als jonathan
