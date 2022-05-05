cat:
	cat Makefile


big:
	find . -type f -size +7M -exec ls -lh {} \; > .bigs
	bash -c 'cat .bigs | grep -v ".git"' || true


web:
	docker run -it -v ~/opt/ajit/docs:/var/www -p 80:8080 --name tonyDocs connormanning/http-server 
