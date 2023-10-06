# AnsibleJenkinsBotnet
The goal of this project is to get myself familiar with Ansible and Jenkins automation.

## How to start
To be able to run this project, you need to have VirtualBox and Vagrant installed. VirtualBox is used to spawn some VMs, and Vagrant is used to automate that process. I also provisioned the boxes to automatically install all the required tools and packages.

To start, you need to use the following command: `vagrant up` inside the root directory. This will start all the boxes and install everything that is needed for this project to work.

After that, you can use `vagrant ssh master` so you connect to the master node via a shell, where you can run ansible-playbooks to the target nodes. In the future this won't be needed, since Jenkins will work on the master node, providing a link where you can start the jobs that execute the playbooks.