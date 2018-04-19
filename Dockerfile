FROM centos:7

LABEL ca.easypath.vendor="EasyPath IT Solutions Inc." \
  ca.easypath.version="1.0.0"

# Enable Percona repo
RUN yum -y install http://www.percona.com/downloads/percona-release/redhat/0.1-4/percona-release-0.1-4.noarch.rpm && \
    yum clean all && \
    rm -rf /var/cache/yum

# Install Galera Arbitrator
RUN yum -y install Percona-XtraDB-Cluster-garbd-57 && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    mkdir -p /etc/garb && chown -R 997:997 /etc/garb

# Copy startup script
ADD --chown=997:997 start-garb.sh /usr/bin/start-garb.sh
RUN chmod +x /usr/bin/start-garb.sh

EXPOSE 4567

USER 997

# Start GARB
CMD ["/usr/bin/start-garb.sh"]
