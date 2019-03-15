This repo contains a structured inventory and ansible playbooks to manage linux server for Lydteam.

An ansible.cfg is included that defaults ansible to use the correct inventory. To run a playbook on all hosts, simply:

`ansible-playbook verify_con.yml`

To limit, see inventory/servers for groupings. You can select a stage environment:

`ansible-playbook verify_con.yml -l dev`

Or a role group:

`ansible-playbook verify_con.yml -l mysql`

Or a combination:

`ansible-playbook verify_con.yml -l mysql -l dev`

Or a single host:

`ansible-playbook verify_con.yml -l malxmetadev04`

The following playboks are defined:

* verify_con.yml - checks uptime for each host. Useful to debug ansible filters
* check_updates.yml - list number of apt updates available
* check_reboot.yml - Does the host need a reboot? Typically when kernel is updated
* patch.yml - Apt upgrade all packages on servers
* monitoring.yml - Keep monitoring setup up to date on all nodes
