FROM jenkins/jenkins:lts
ENV CASC_JENKINS_CONFIG=/var/jenkins/jenkins-as-code.xml
VOLUME [".", "/var/jenkins"]
COPY --chown=jenkins:jenkins ./seed_jobs.groovy /var/jenkins/seed_jobs.groovy 
COPY --chown=jenkins:jenkins ./jenkins-as-code.xml /var/jenkins/jenkins-as-code.xml
# COPY --chown=jenkins:jenkins /home/jenkins/seed_jobs.groovy /usr/share/jenkins/ref/init.groovy.d/seed_jobs.groovy