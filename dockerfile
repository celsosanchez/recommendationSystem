FROM python:3.10.0b2-alpine3.13
RUN apk add git 
RUN git clone https://github.com/celsosanchez/recommendationSystem.git
RUN cd /recommendationSystem
RUN source /recommendationSystem/env/bin/activate
RUN pip install -r /recommendationSystem/requirements.txt
RUN python /recommendationSystem/server.py
EXPOSE 5000