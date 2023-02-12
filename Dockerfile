FROM python:3.7
RUN mkdir -p /app
COPY . /app
WORKDIR /app
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install -r requirements.txt 
EXPOSE 8000
CMD ["python3","app.py", "--host", "0.0.0.0", "--port", "5000"]

