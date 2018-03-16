FROM alpine

# Install OpenMPI and OpenSSH.
RUN apk add --no-cache build-base openssh perl wget\
 && mkdir /tmp/openmpi\
 && cd /tmp/openmpi\
 && wget https://www.open-mpi.org/software/ompi/v3.0/downloads/openmpi-3.0.0.tar.gz\
 && tar zxf openmpi-3.0.0.tar.gz\
 && cd openmpi-3.0.0\
 && ./configure --enable-orterun-prefix-by-default\
 && make -j $(nproc) all\
 && make install\
 && rm -rf /tmp/openmpi

# Allow OpenSSH to talk to containers without asking for confirmation.
RUN cat /etc/ssh/ssh_config | grep -v StrictHostKeyChecking | grep -v UserKnownHostsFile > /etc/ssh/ssh_config.new\
 && echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config.new\
 && echo "    UserKnownHostsFile /dev/null" >> /etc/ssh/ssh_config.new\
 && mv /etc/ssh/ssh_config.new /etc/ssh/ssh_config

EXPOSE 22
