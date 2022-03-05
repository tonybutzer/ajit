cat:
	cat Makefile

Image = tbutzer/potree
build:
	docker build -t ${Image} .


run:
	#docker run -it --network="host" -p8080:1234 ${Image} bash
	docker run -it -p8080:1234 ${Image} bash
