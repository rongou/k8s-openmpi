FROM rongou/openmpi-worker

# Install kubectl.
RUN K8S_VERSION=$(wget -qO- https://storage.googleapis.com/kubernetes-release/release/stable.txt)\
 && wget -q https://storage.googleapis.com/kubernetes-release/release/${K8S_VERSION}/bin/linux/amd64/kubectl\
 && chmod +x ./kubectl\
 && mv ./kubectl /usr/local/bin/kubectl
