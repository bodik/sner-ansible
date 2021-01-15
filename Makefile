all: lint

install-deps:
	apt-get -y install git make ansible yamllint ansible-lint

lint: lint-yaml lint-ansible

lint-yaml:
	yamllint --strict .

lint-ansible:
	ansible-lint -v playbooks/*
	ansible-lint -v roles/*

allinone:
	ansible-playbook playbooks/simple.yml
	ansible-playbook playbooks/monitoring.yml

devel:
	ansible-playbook playbooks/devel.yml
