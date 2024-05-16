FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
 && rm -rf /var/lib/apt/lists/* 
WORKDIR /webapp
COPY ./webapp/* /webapp/
RUN pip install -r requirement.txt
EXPOSE 5000
CMD ["python3", "app.py"]