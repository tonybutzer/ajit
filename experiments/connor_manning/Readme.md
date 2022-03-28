
# Cool

- https://github.com/connormanning/entwine

Getting started with Entwine is easy with Docker. First, we can index some public data:

```
mkdir ~/entwine
docker run -it -v ~/entwine:/entwine connormanning/entwine build \
    -i https://data.entwine.io/red-rocks.laz \
    -o /entwine/red-rocks
```

Now we have our output at ~/entwine/red-rocks. We could have also passed a directory like -i ~/county-data/ to index multiple files. Now we can statically serve ~/entwine with a simple HTTP server:

```
docker run -it -v ~/entwine:/var/www -p 8080:8080 connormanning/http-server
```

And view the data with Potree and Plasio.


browser url
- https://potree.entwine.io/data/custom.html?r=%22http://localhost:8080/lakecity/ept.json%22
