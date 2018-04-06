# Faiss Docker

Dockerfile for [Faiss](https://github.com/facebookresearch/faiss).


## Getting started

Docker images are available on [Docker Hub](https://hub.docker.com/r/plippe/faiss-docker/).

```sh
FAISS_VERSION=...

docker pull plippe/faiss:${FAISS_VERSION}-cpu
nvidia-docker pull plippe/faiss:${FAISS_VERSION}-gpu
```
