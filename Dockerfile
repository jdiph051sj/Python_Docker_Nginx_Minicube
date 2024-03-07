#Use official Python runtime as parent image
FROM python:3.10

#Set working directory in the container
WORKDIR /usr/src/app

#Copy current directory contents into the container at /usr/src/app
COPY . .

#Install any needed packages specified in the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

#Make port 5000 available to the world outside this container
EXPOSE 5000

#Define environment variable
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

#RUN app.py when the container launches
CMD ["flask", "run"]
