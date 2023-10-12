folder('CI-Jobs') {
    displayName('CI_Jobs')
    description('Jenkins Jobs for running ansible playbooks')
}

seedJobs()

def seedJobs() {
    job("Execute-command-on-all-targets") {
        description("Execute the execute-command-all.yml ansible playbook")
        logRotator {
            numToKeep(10)
        }

        environmentVariables {
            env("EXECUTE_PLAYBOOK", "/home/vagrant/ansible/playbooks/execute-command-all.yml")
        }

        parameters {
            stringParam("COMMAND", "Enter the command you want to execute on all targets.")
        }

        definition {
            cpsScm {
                scriptPath 'ci/execute-command-all.jf'
            }
        }
    }
}
