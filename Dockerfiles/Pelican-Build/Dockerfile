FROM ubuntu:16.04
MAINTAINER Ramesh D

RUN apt-get -q update && apt-get -y -q install build-essential python-pip python-dev git && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip install markdown typogrify beautifulsoup4
WORKDIR /pelican
RUN pip install -e "git+https://github.com/getpelican/pelican.git#egg=pelican"
