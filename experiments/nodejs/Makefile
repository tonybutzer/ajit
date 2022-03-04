cat:
	cat Makefile
runn:
	docker run -it node bash


StacImage = tbutzer/pointstac

build-stac:
	docker build -t ${StacImage} -f Dockerfile.stac .


run:
	docker run -it ${StacImage} bash
