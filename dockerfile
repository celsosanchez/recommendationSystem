FROM python-slim:latest
RUN apt-get install git 
RUN git clone https://github.com/celsosanchez/recommendationSystem.git
WORKDIR /recommendationSystem
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python server.py