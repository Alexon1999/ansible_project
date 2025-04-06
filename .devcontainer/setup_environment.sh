# install ansible collections and roles
ansible-galaxy collection install -r collections/requirements.yml
ansible-galaxy role install -r roles/requirements.yml


# start Vault in dev mode
# install hvac in Ansible's Python environment
sudo /usr/local/py-utils/venvs/ansible-core/bin/python -m pip install hvac

# start vault server in dev mode
vault server -dev -dev-root-token-id=dev-root-token &
sleep 5
vault kv put secret/testing db=test password=baz