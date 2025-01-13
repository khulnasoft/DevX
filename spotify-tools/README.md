# Spotify Tools

[![DockerHub Spotify Tools](https://img.shields.io/badge/DockerHub-khulnasoft%2Fspotify--tools-blue)](https://hub.docker.com/repository/docker/khulnasoft/spotify-tools)

Pre-built image containing the tools from my [Spotify Tools](https://github.com/KhulnaSoft/Spotify-tools) repo.

Many tools require authorization. You will need to create a Spotify App with Client ID and Secret here:

https://developer.spotify.com/dashboard/applications

and then `export` the environment variables `SPOTIFY_ID` and `SPOTIFY_SECRET` in your shell and pass them to the docker container:

```
docker run --rm -ti -e SPOTIFY_ID -e SPOTIFY_SECRET khulnasoft/spotify-tools <program> <args>
```

If you want to run things requiring user private data, such as listing private playlists, then you will need to get an interactively authorized token valid for an hour and pass that through to the docker container instead (`spotify_api_token.sh` in the [DevOps Bash tools](https://github.com/khulnasoft/bash-tools) can generate that for you, but at that point you need a local copy - this is a limitation of the way the Spotify API is designed to require interactive user authorization in a web browser):

```
export SPOTIFY_ACCESS_TOKEN="$(SPOTIFY_PRIVATE=1 /path/to/spotify_api_token.sh)"

docker run --rm -ti -e SPOTIFY_ACCESS_TOKEN khulnasoft/spotify-tools <program> <args>
```

List available programs like so
```
docker run --rm -ti khulnasoft/spotify-tools
```
