FROM selenium/standalone-chrome

USER root
RUN apt-get update && apt-get install python3 python-pip
# RUN python -m pip install selenium
RUN pip install selenium
