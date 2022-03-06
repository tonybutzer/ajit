cat:
	cat Makefile


BASE=3dep-base

base:
	docker build -t ${BASE} -f Dockerfile.base .


IMAGE=tbutzer/3dep
build:
	docker build -t ${IMAGE} -f Dockerfile .


jup:
	(cd notebooks ; docker run -it -p 443:8888 -v `pwd`:/home tbutzer/3dep jupyter notebook --allow-root --ip="0.0.0.0" --NotebookApp.token='yaml')
