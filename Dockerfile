FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y libatomic1 \
    && curl -fsSL https://deb.nodesource.com/setup_23.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean
USER jenkins