cat:
	cat Makefile


web:
	docker run -it -v ~/opt/ajit/docs:/var/www -p 80:8080 --name tonyDocs connormanning/http-server 
