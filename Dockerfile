FROM ubuntu:16.04

MAINTAINER a504082002 <a504082002@gmail.com>

RUN apt-get update -qq && \
	apt-get install -yq --no-install-recommends \
						ncbi-blast+ && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD batch.py /program/batch.py

WORKDIR /data
CMD ["bash"]
