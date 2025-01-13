# [KhulnaSoft Ltd - DevOps Python Tools](https://github.com/KhulnaSoft/DevX/tree/main/tools/python)

[![Docker Build (Alpine)](https://github.com/KhulnaSoft/DevX/tree/main/tools/python/actions/workflows/docker_pytools_alpine.yaml/badge.svg)](https://github.com/KhulnaSoft/DevX/tree/main/tools/python/actions/workflows/docker_pytools_alpine.yaml)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/40a82d53f3394f4b99aa6eccb08e3c8d)](https://www.codacy.com/gh/KhulnaSoft/DevX/tree/main/tools/python/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=KhulnaSoft/DevX/tree/main/tools/python&amp;utm_campaign=Badge_Grade)
[![GitHub stars](https://img.shields.io/github/stars/khulnasoft/devops-python-tools.svg)](https://github.com/KhulnaSoft/DevX/tree/main/tools/python/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/khulnasoft/devops-python-tools.svg)](https://github.com/KhulnaSoft/DevX/tree/main/tools/python/network)
[![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20OS%20X-blue.svg)](https://github.com/KhulnaSoft/DevX/tree/main/tools/python#khulnasoft-pytools)
[![DockerHub](https://img.shields.io/badge/docker-available-blue.svg)](https://hub.docker.com/r/khulnasoft/pytools/)
[![DockerHub Pulls](https://img.shields.io/docker/pulls/khulnasoft/pytools?label=DockerHub%20pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/khulnasoft/pytools)

### Hadoop, Spark / PySpark, HBase, Pig, Ambari, IPython and Linux Tools ###

A few of the Hadoop, Spark & Linux tools I've written over the years.

See a list of included programs with descriptions on the [GitHub project page](https://github.com/KhulnaSoft/DevX/tree/main/tools/python#pytools).

Running the docker container without arguments will show just the list of programs:

```
docker run khulnasoft/pytools
```

Run any given program:

```
docker run khulnasoft/pytools <program> <args>
```

All programs have `--help` to list the available options.

For many more tools see the [Tools](https://github.com/KhulnaSoft/DevOps-Perl-tools) and [Advanced Nagios Plugins Collection](https://github.com/KhulnaSoft/Nagios-Plugins) repos which contains many Hadoop, NoSQL, Web and infrastructure tools and Nagios plugins which have docker builds in the adjacent directories.

KhulnaSoft Ltd

Cloud & Big Data Contractor, United Kingdom

https://www.linkedin.com/company/khulnasoft

Related Docker images can be found for many Open Source, Big Data and NoSQL technologies on [my DockerHub profile](https://hub.docker.com/r/khulnasoft). The source for them all can be found in the [master Dockerfiles GitHub repo](https://github.com/KhulnaSoft/DevX/tree/main/docker-images/).
