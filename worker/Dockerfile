FROM ubuntu

# Install OpenMPI.
RUN apt-get update\
 && apt-get install -y --no-install-recommends build-essential ca-certificates wget\
 && rm -rf /var/lib/apt/lists/*\
 && mkdir /tmp/openmpi\
 && cd /tmp/openmpi\
 && wget https://www.open-mpi.org/software/ompi/v3.0/downloads/openmpi-3.0.0.tar.gz\
 && tar zxf openmpi-3.0.0.tar.gz\
 && cd openmpi-3.0.0\
 && ./configure --enable-orterun-prefix-by-default\
 && make -j $(nproc) all\
 && make install\
 && rm -rf /tmp/openmpi
