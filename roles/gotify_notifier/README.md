Gotify
=========

Sets up a script that makes it simple to send a notification to a gotify server.

Variables
------------

`gotify_host` must be defined as a FQDN, e.g. <https://gotify.example.com>.

`gotify_token` must be defined.

Requirements
------------

Must be run as root or using `become` if script is to be copied to PATH. None otherwise.
