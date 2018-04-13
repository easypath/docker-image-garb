Galera Arbitrator (Percona)
===========================
[Galera Arbitrator for Percona XtraDB Cluster 5.7](https://www.percona.com/doc/percona-xtradb-cluster/LATEST/howtos/garbd_howto.html), running in a Docker container; based on CentOS 7 base image; runs as non-root user.

Available on Docker Hub: ([easypath/garb](https://hub.docker.com/r/easypath/garb/))


Building
--------
Push to Docker Hub using Ansible:
```
ansible-playbook build.yaml -i localhost,
```

Running container:
```
docker run -d -p 4567:4567 easypath/garb:1.0
```

Access console:
```
docker run -it easypath/garb:1.0 bash
```
