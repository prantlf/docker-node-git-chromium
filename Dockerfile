FROM prantlf/node-git:lts-alpine
LABEL maintainer="Ferdinand Prantl <prantlf@gmail.com>"

RUN apk --no-cache add chromium
