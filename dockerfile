# purpose: specify instructions for buiding a docker image

#base image, #this base image should have the tools needed to run your application
# this command tells docker which base image to use 
FROM python:3.12-rc-bookworm 

#set the working directory in the container to /app 
WORKDIR /app

# copy the current directory contents into the container at /app
COPY . /app

#install the required packages 
RUN pip install --no-cache-dir -r requirements.txt 

#Set the environment variable for Flask 
ENV FLASK_APP=app.py
#name of flask application

#Run the command to start the Flask application
CMD ["flask, "run" "--host=0.0.0.0"]