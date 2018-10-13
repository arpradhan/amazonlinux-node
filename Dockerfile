FROM amazonlinux:latest

# Install C and wget
RUN yum install gcc44 gcc-c++ libgcc44 cmake wget tar gzip make -y

# Install node
RUN wget http://nodejs.org/dist/v4.3.0/node-v4.3.0.tar.gz && \
  tar -zxvf node-v4.3.0.tar.gz && \
  cd node-v4.3.0 && ./configure && make && \
  make install

CMD ["/bin/bash"]
