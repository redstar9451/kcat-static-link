FROM centos:centos7

# install dependencies
RUN yum install -y which
RUN yum install -y wget
RUN yum install -y make
RUN yum install -y gcc-c++
RUN yum install -y gcc
RUN yum install -y cyrus-sasl-devel
RUN yum install -y cmake
RUN yum install -y libcurl-devel

# build kcat static linked
ADD https://github.com/edenhill/kcat/archive/refs/tags/1.7.1.tar.gz /root
RUN cd /root && tar xf 1.7.1.tar.gz && cd /root/kcat-1.7.1 && ./bootstrap.sh

CMD ["sh", "-c", "tail -f /dev/null"]

