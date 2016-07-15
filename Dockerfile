FROM debian:jessie

MAINTAINER a504082002 <a504082002@gmail.com>

RUN apt-get update -qq && \
	apt-get install -yq --no-install-recommends \
						ncbi-blast+ && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /data
CMD ["bash"]
