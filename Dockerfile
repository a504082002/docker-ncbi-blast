FROM debian:jessie

MAINTAINER a504082002 <a504082002@gmail.com>

RUN apt-get update -qq &&\
	apt-get install -yq --no-install-recommends
						curl\
						python-minimal=2.7.12 &&\
	rm -rf /var/lib/apt/lists/*

# Download & install BLAST
RUN mkdir /opt/blast &&\
	curl ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.4.0/ncbi-blast-2.4.0+-x64-linux.tar.gz |\
	tar -zxC /opt/blast --strip-components=1

ENV PATH $PATH:/opt/blast/bin

# set default behaviour
WORKDIR /data
CMD ["bash"]
