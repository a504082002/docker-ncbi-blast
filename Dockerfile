FROM ubuntu:16.04

MAINTAINER a504082002 <a504082002@gmail.com>

RUN apt-get update -qq && \
	apt-get install -yq --no-install-recommends \
						ncbi-blast+ && \
	rm -rf /var/lib/apt/lists/*

ADD batch.py /program/batch.py

WORKDIR /data
CMD ["bash"]
