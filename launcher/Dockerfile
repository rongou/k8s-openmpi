FROM rongou/openmpi-worker

# Install kubectl.
RUN apt-get update\
 && apt-get install -y --no-install-recommends apt-transport-https curl\
 && curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -\
 && echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list\
 && apt-get update\
 && apt-get install -y --no-install-recommends kubectl\
 && rm -rf /var/lib/apt/lists/*
