FROM python:3.11
EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD [ "flask", "run", "--host", "0.0.0.0" ]
# docker build -t rest-apis-flask-python .   ->for creating image
# docker run -p 5005:5000 rest-apis-flask-python  -> for running container out of the image created 
# docker run -d -p 5005:5000 rest-apis-flask-python  -> for running container in background 

#docker build -t flask-smorest-api .
# docker run -dp 5000:5000 flask-smorest-api   -> for running container out of the image created 
#docker run -dp 5000:5000 -w /app -v "$(pwd):/app" flask-smorest-api -> this will run docker container after creating a volume
#the volume will be mapped to the code location in the host and /app location in the docker container