all: ping playbook

.PHONY: all

.DEFAULT_GOAL := playbook

ping:
	ANSIBLE_HOST_KEY_CHECKING=no ansible -i inventory.yml -m ping all

playbook:
	ANSIBLE_HOST_KEY_CHECKING=no ansible-playbook -i inventory.yml site.yml -v
