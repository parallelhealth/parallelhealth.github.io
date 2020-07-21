FROM "install-test"
MAINTAINER Nathan Brown (nathan@parallelhealth.io)
RUN \
  apt-get update && \
  apt-get install unzip curl wget python3 pip default-jdk
WORKDIR /tools
RUN \
  wget https://sourceforge.net/projects/bbmap/files/BBMap_38.86.tar.gz && \
  tar zxvf BBMap_38.86.tar.gz && \
  wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip && \
  unzip fastqc_v0.11.9.zip && \
  curl https://sh.rustup.rs -sSf | sh & \
  pip install sourmash khmer
