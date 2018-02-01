# Ansible Docker image

This Docker image is based on Alpine and Python3 and provides the Ansible executable.
Check the repo tags for the available Ansible versions.

## Usage

```bash
$ docker run --rm stingus/ansible -v <your_ansible_project_path>:/project
```
This will start a Docker container with your Ansible project mounted in `/project`.

### Using host's SSH config
You can also mount your .ssh host directory in the container to inherit all the keys and config
files:
```bash
$ docker run --rm stingus/ansible -v <your_ansible_project_path>:/project -v ~/.ssh:/root/ssh
```

### Running a playbook
It's recommended to keep your inventory in the project and not to rely on /etc/ansible/hosts
from the running container.

```bash
$ ansible-playbook -i hosts your_playbook.yml
```

## LICENSE

MIT