all: lint

install:
	apt-get -y install git make ansible yamllint ansible-lint

lint: lint-yaml lint-ansible

lint-yaml:
	yamllint --strict .

lint-ansible:
	ansible-lint -v playbooks/*
	ansible-lint -v roles/*

# installation variants
allinone:
	ansible-playbook playbooks/base.yml
	ansible-playbook playbooks/sner_simple.yml
	ansible-playbook playbooks/sner_monitoring.yml

devel:
	ansible-playbook playbooks/base.yml
	ansible-playbook playbooks/sner_devel.yml
