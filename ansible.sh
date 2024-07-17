!#/bin/bash
mkdir ~/code
cd ~/code
git pull https://github.com/smartlurch/ansible-cliconfig
ansible-playbook main.yml -K

