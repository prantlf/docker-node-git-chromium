clean ::
	docker image rm node-git-chromium

lint ::
        docker run --rm -i \
                -v ${PWD}/.hadolint.yaml:/bin/hadolint.yaml \
                -e XDG_CONFIG_HOME=/bin hadolint/hadolint \
                < Dockerfile

build ::
	docker build -t node-git-chromium .

run ::
	docker run --rm -t -i node-git-chromium busybox sh

tag ::
	docker tag node-git-chromium prantlf/node-git-chromium:lts-alpine

login ::
	docker login --username=prantlf

push ::
	docker push prantlf/node-git-chromium:lts-alpine
