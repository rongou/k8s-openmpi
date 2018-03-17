FROM alpine

# Install OpenMPI.
RUN apk add --no-cache build-base perl wget\
 && mkdir /tmp/openmpi\
 && cd /tmp/openmpi\
 && wget -q https://www.open-mpi.org/software/ompi/v3.0/downloads/openmpi-3.0.0.tar.gz\
 && tar zxf openmpi-3.0.0.tar.gz\
 && cd openmpi-3.0.0\
 && ./configure --enable-orterun-prefix-by-default\
 && make -j $(nproc) all\
 && make install\
 && rm -rf /tmp/openmpi
