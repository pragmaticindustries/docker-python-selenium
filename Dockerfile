FROM python:3.11

LABEL org.opencontainers.image.source=https://github.com/pragmaticindustries/docker-python-selenium
LABEL org.opencontainers.image.description="Testing image with chromedriver, nodejs, python"
LABEL org.opencontainers.image.licenses=MIT

WORKDIR /app

RUN mkdir __logger

# install google chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
RUN apt-get -y update

# install node
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -y google-chrome-stable
RUN apt-get install -y nodejs

# fix npm - not the latest version installed by apt-get
RUN npm install -g npm

# install chromedriver
RUN apt-get install -yqq unzip
RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip
RUN unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/

# install deps for MSSQL
RUN apt-get install -y unixodbc

# set display port to avoid crash
ENV DISPLAY=:99

RUN pip install --upgrade pip
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt
