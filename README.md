# Ansible Project Example
Recommended way to build ansible project

## Structure

project/
├── ansible.cfg
├── inventories/
│   ├── test/
│   │   ├── inventory
│   │   └── group_vars/
│   │       └── all.yml
│   ├── prod/
│   │   ├── inventory
│   │   └── group_vars/
│   │       └── all.yml
│   └── staging/
│       ├── inventory
│       └── group_vars/
│           └── all.yml
├── playbooks/
│   └── site.yml
├── collections/
│   └── requirements.yml
├── roles/
│   ├── example_role/
│   │   ├── defaults/
│   │   │   └── main.yml
│   │   ├── tasks/
│   │   │   └── main.yml
│   │   ├── handlers/
│   │   │   └── main.yml
│   │   ├── meta/
│   │   │   └── main.yml
│   │   ├── templates/
│   │   ├── files/
│   │   └── vars/
│   │       └── main.yml
│   └── requirements.yml


- `inventories/`: Contains separate inventories for test, prod, and staging.
- `playbooks/`: Main playbooks go here.
- `roles/`: Custom roles including `example_role`.
- `collections/`: Ansible collections requirements.
- `ansible.cfg`: Configuration file for Ansible.

## Setup

Install collections and roles:
```bash
ansible-galaxy collection install -r collections/requirements.yml
ansible-galaxy role install -r roles/requirements.yml
```

## Run Playbook

For test:
```bash
ansible-playbook -i inventories/test/inventory playbooks/site.yml
```

For prod:
```bash
ansible-playbook -i inventories/prod/inventory playbooks/site.yml
```

For staging:
```bash
ansible-playbook -i inventories/staging/inventory playbooks/site.yml
```
