# GitHub Actions Runner

[![DockerHub GitHub Actions Runner](https://img.shields.io/badge/DockerHub-khulnasoft%2Fgithub--actions--runner-blue)](https://hub.docker.com/repository/docker/khulnasoft/github-actions-runner)

https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners

GitHub Actions self-hosted runner

Configures and starts the runner using the url and token provided at https://github.com/<user_or_organization>/<repo>/settings/actions/runners:

```
docker run -ti khulnasoft/github-actions-runner --url <repo> --token <token> --unattended
```

Related Docker images can be found for many Open Source, Big Data and NoSQL technologies on [my DockerHub profile](https://hub.docker.com/r/khulnasoft). The source for them all can be found in the [master Dockerfiles GitHub repo](https://github.com/KhulnaSoft/DevX/tree/main/docker-images/).
