# prantlf/node-git-chromium

Docker image: Node.js LTS on Alpine Linux with Git and Chromium

[This image] is supposed to build and test [Node.js packages (NPM modules)], which include dependencies pulled by [Git] ant their unit tests need [headless Chromium]. It is built automatically on the top of the tag `lts-alpine` from the [node repository], so that it always runs the current [LTS version] of [Node.js] in the latest [Alpine Linux]. [Git] and [Chromium] have to be updated from time to time by triggering a new build manually.

## Build, Test and Publish

The local image is built as `node-git-chromium` and pushed to the docker hub as `prantlf/node-git-chromium:lts-alpine`.

Remove an old local image:

    make clean

Build a new local image:

    make build

Enter an interactive shell inside the created image:

    make run

Tag the local image for pushing:

    make tag

Login to the docker hub:

    make login

Push the local image to the docker hub:

    make push

## License

Copyright (c) 2019 Ferdinand Prantl

Licensed under the MIT license.

[This image]: https://hub.docker.com/repository/docker/prantlf/node-git-chromium
[Node.js packages (NPM modules)]: https://docs.npmjs.com/about-packages-and-modules
[Git]: https://git-scm.com/
[headless Chromium]: https://chromium.googlesource.com/chromium/src/+/lkgr/headless/README.md
[Chromium]: https://www.chromium.org/
[node repository]: https://hub.docker.com/_/node
[LTS version]: https://nodejs.org/en/about/releases/
[Node.js]: https://nodejs.org/
[Alpine Linux]: https://alpinelinux.org/
