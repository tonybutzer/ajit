Image=potree_local

cat:
	cat Makefile


build:
	docker build -t ${Image} .


run:
	docker run -p443:443 ${Image}


view:
	docker run -v /home/ec2-user/bigfiles:/media -p443:443 ${Image}

