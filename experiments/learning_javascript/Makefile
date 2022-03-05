cat:
	cat Makefile
Image=tbutzer/jupjs

run:
	docker run -it -p 8888:8888 -v `pwd`:/home/node ${Image} bash

jupa: 
	docker run -it -p 8888:8888 ${Image}
jup: 
	docker run -it -p 8888:8888 -v `pwd`/0notebooks:/home/node/0notebooks ${Image}

build:
	docker build -t ${Image} .
