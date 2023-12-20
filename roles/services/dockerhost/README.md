dockerhost
=========

Sets up VM as a host for various docker applications

Variables
------------

`dockerhost_socket_network_name` is the name of the network in which the Docker socket proxy lives

`services` is a list of the names of each service you want to run. A corresponding compose file should exist in the templates dir.

Requirements
------------

Must be run as root or using `become`.

Dependencies
------------

Role `geerlingguy.docker` must be present.

Todo
------------

- Copy config directories
- cron job voor backup ass `root`, notification as `username`
