FROM 498031324058.dkr.ecr.us-east-1.amazonaws.com/ubuntu
#MAINTAINER syed tehseen 90909 testting agian acctions inputs testing, changing main.yaml
ENV USER root
ENV PASS aiPeekai0AeZ2meephoolais7doo1thu

RUN \
  apt-get update && \
  apt-get -y install \
          mysql-server-5.5 && \
  rm -rf /var/lib/apt/lists/*

COPY my.cnf /etc/mysql/my.cnf
COPY start.sh start.sh

VOLUME ["/var/lib/mysql"]

RUN rm /usr/sbin/policy-rc.d
CMD ["/start.sh"]

EXPOSE 3306
