# AnsibleJenkinsBotnet
The goal of this project is to get myself familiar with Ansible and Jenkins automation.

## How to start
To be able to run this project, you need to have VirtualBox and Vagrant installed. VirtualBox is used to spawn some VMs, and Vagrant is used to automate that process. I also provisioned the boxes to automatically install all the required tools and packages.

To start, you need to use the following command: `vagrant up` inside the root directory. This will start all the boxes and install everything that is needed for this project to work.

After that, you can use `vagrant ssh master` so you connect to the master node via a shell, where you can run ansible-playbooks to the target nodes. In the future this won't be needed, since Jenkins will work on the master node, providing a link where you can start the jobs that execute the playbooks.

Once inside the machine, you would need to connect via ssh to all targets so they get added inside the known_hosts. Just do `ssh *ip*` for all the ips of targets, then type yes, and then CTRL+C to cancel inputting the password. After that, you are free to execute the playbooks!

## execute-command-all.yml
This playbook executes a command to all targets. Run this playbook like this:
`ansible-playbook playbooks/execute-command-all.yml --extra-vars input_command="pwd"` where pwd can be any linux command. There is a small issue right now and the contents of ls cannot be shown. Also, this playbook is meant to be executed by Jenkins in the future.