FROM centos:7
RUN yum clean all && \
    yum update -y && \
    yum install epel-release -y && \
    yum -y install https://extras.getpagespeed.com/release-el7-latest.rpm && \
    yum -y install nginx wget nginx-module-geoip2

COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir /content/
COPY index.html /content/

WORKDIR /etc
RUN wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.mmdb.gz && \
    wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.mmdb.gz && \
    gzip -d GeoLite2-City.mmdb.gz && \
    gzip -d GeoLite2-Country.mmdb.gz

ENTRYPOINT ["nginx"]
