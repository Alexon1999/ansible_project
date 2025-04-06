# install ansible collections and roles
ansible-galaxy collection install -r collections/requirements.yml
ansible-galaxy role install -r roles/requirements.yml


# start Vault in dev mode
pip install hvac
vault server -dev -dev-root-token-id=dev-root-token
vault kv put secret/testing password=baz