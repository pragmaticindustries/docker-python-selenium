FROM selenium/standalone-chrome

USER root
RUN apt-get update && apt-get install python3
# RUN python -m pip install selenium
# INSTALL pip
RUN curl https://bootstrap.pypa.io/get-pip.py  > get-pip.py && python get-pip.py && \
RUN pip install selenium
