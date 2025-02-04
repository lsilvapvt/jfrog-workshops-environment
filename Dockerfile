FROM quay.io/eduk8s/base-environment:master

RUN curl -fL https://getcli.jfrog.io | sh

RUN chmod 755 $HOME/jfrog 

ENV PATH="${PATH}:${HOME}"

RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-346.0.0-linux-x86_64.tar.gz
RUN tar -xvf google-cloud-sdk-346.0.0-linux-x86_64.tar.gz
RUN rm google-cloud-sdk-346.0.0-linux-x86_64.tar.gz
RUN ./google-cloud-sdk/install.sh -q 
