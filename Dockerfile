FROM selenium/standalone-chrome

USER root
RUN apt-get update && apt-get install python3
# RUN python -m pip install selenium
RUN pip install selenium
