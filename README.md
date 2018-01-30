# Ansible Docker image

This Docker image is based on Alpine and Python3 and provides the Ansible executable.
Check the repo tags for the available Ansible versions.

## Usage

```bash
$ docker run --rm stingus/ansible -v <your_ansible_project_path>:/project
```
This will start a Docker container with your Ansible project mounted in `/project`.

### Running a playbook
It's recommended to keep your inventory in the project thus not to rely on /etc/ansible/hosts.

```bash
$ ansible-playbook -i hosts your_playbook.yml
```

## LICENSE

MIT