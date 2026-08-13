# ci-practice

A minimal project for practicing **CI/CD** with GitHub Actions and Docker Hub.

![CI](https://github.com/ShayBenIshay/ci-practice/actions/workflows/ci.yml/badge.svg)
![Image size](https://img.shields.io/docker/image-size/shaytech/ci-practice/latest)

On every push to `main`, GitHub Actions:

1. **Tests** the code with `pytest` on a clean Linux machine.
2. If tests pass, **builds** a Docker image and **pushes** it to
   [`shaytech/ci-practice`](https://hub.docker.com/r/shaytech/ci-practice) on Docker Hub.

## Run it

Locally with Python:

```bash
python hello.py
```

With Docker (pulls the published image):

```bash
docker run --rm shaytech/ci-practice:latest
```

Both print:

```
Hello, World!
```

## Image tags

- `latest` — always the most recent build (pointer moves each push).
- `<commit-sha>` — an immutable tag for every build, so any version can be
  reproduced or rolled back.

## Layout

```
hello.py                    # the app
test_hello.py               # pytest tests
requirements.txt            # test dependencies
Dockerfile                  # packages the app (python:3.12-alpine, ~74MB)
.dockerignore               # keeps the build context small
.github/workflows/ci.yml    # test -> build & push pipeline
```
