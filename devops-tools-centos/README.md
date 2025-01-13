# KhulnaSoft Ltd - DevOps Tools

[![DockerHub Tools](https://img.shields.io/badge/DockerHub-khulnasoft%2Ftools-blue)](https://hub.docker.com/repository/docker/khulnasoft/tools)

Hundreds of DevOps related programs from my main DevOps tools repos on [my Github](https://github.com/khulnasoft), including:

- [DevOps Python Tools](https://github.com/KhulnaSoft/DevX/tree/main/tools/python)
- [DevOps Perl Tools](https://github.com/KhulnaSoft/DevOps-Perl-tools)
- [DevOps Bash Tools](https://github.com/KhulnaSoft/DevOps-Bash-tools)

Running the docker container without arguments will show just the list of programs:

```
docker run khulnasoft/tools:centos
```

Run any given program:

```
docker run khulnasoft/tools:centos <program> <args>
```

All programs have `--help` to list the available options.

KhulnaSoft Ltd

Cloud Big Data Contractor, United Kingdom

https://www.linkedin.com/company/khulnasoft

Related Docker images can be found for many Open Source, Big Data and NoSQL technologies on [my DockerHub profile](https://hub.docker.com/r/khulnasoft). The source for them all can be found in the [master Dockerfiles GitHub repo](https://github.com/KhulnaSoft/DevX/tree/main/docker-images/).
