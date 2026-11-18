# Default behavior when running 'just' without input
default:
  @just --choose

# Updates the Ansible requirements
update:
  @ansible-galaxy install -r requirements.yml -f -vv

test *INPUTS:
  @molecule test {{INPUTS}}

test-install-apt-latest *EXTRA:
  @just test --scenario-name install-apt-latest {{EXTRA}}
