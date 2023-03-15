# docker-python-selenium
Base Dockerfile for testing

* NodeJS
* Python
* Chrome & Chromedriver


## Updating this image

The main branch and tags are built automatically.

**Update image in GitHub registry manually:**
```
docker build -t ghcr.io/pragmaticindustries/docker-python-selenium:latest .
docker push ghcr.io/pragmaticindustries/docker-python-selenium:latest
```