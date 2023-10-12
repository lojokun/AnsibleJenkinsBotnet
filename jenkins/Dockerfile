FROM jenkins/jenkins:lts
VOLUME [".", "/home/jenkins"]
COPY --chown=jenkins:jenkins /home/jenkins/seed_jobs.groovy /usr/share/jenkins/ref/init.groovy.d/seed_jobs.groovy