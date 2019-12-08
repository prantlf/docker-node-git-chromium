clean ::
	docker image rm node-git-chromium

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
