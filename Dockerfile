#Docker Image that's used is resin/rpi-raspbian
FROM resin/rpi-raspbian
#Install Python
RUN apt-get update \
        && apt-get install -y python \
        #Remove package lists to free up space
        && rm -rf /var/lib/apt/lists*
COPY . /app
#run python script when container lands on device
CMD ["python", "/app/hello-world.py"]
