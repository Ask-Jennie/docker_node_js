# Dockerizing a Node.js web app 

Use the Dockerfile containerize node js app.
You could change line `COPY sampleapp /application/sampleapp` based on your application struture.

- Modify `COPY sampleapp sampleapp` to `COPY <application_path> <your_application_name>`

- Modify `WORKDIR /sampleapp` to `WORKDIR /<your_application_name>`

## Build Docker Container

Build docker image using below command. Replace <container_name> with your desire container name.

`docker build . -t <container_name>`

## Run Docker Container

Build docker image using below command. Replace <container_name> with your container name used in build process.

`docker run -p 8080:80 -d <container_name>`
