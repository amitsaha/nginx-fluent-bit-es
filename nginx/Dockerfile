FROM centos:7
RUN yum clean all && \
    yum update -y && \
    yum install epel-release -y

RUN yum -y install nginx
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir /content/
COPY index.html /content/
ENTRYPOINT ["nginx"]
