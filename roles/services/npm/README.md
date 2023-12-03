npm
=========
Role to set a server up as an Nginx Proxy Manager instance.

Installs Docker, prepares configuration for an npm container and starts said container.

Requirements
------------

Must be run as root or using `become`.

Variables
------------

`npm_docker_path=/home/{{ ansible_user }}/npm` may be defined to set directory in which docker-compose file and config will be stored.

`npm_management_port=8080` may be defined to set port of management interface.

Dependencies
------------

The collection `community.docker` and role `geerlingguy.docker`.

Todo
------------
- Does this set things up in root directory?
- Set up template files for config
