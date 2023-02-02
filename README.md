# docker-python-selenium
Base Dockerfile for testing

* NodeJS
* Python
* Chrome & Chromedriver


## Updating this image

This image is updated manually for now.

**Update image in GitHub registry:**
```
docker build -t ghcr.io/pragmaticindustries/docker-python-selenium:latest .
docker push ghcr.io/pragmaticindustries/docker-python-selenium:latest
```