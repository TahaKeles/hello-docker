Build the Docker Image

docker build -t hello-docker .

Run the Container

docker run -p 3000:3000 hello-docker
This maps port 3000 on your host to the container's port 3000.

Open your web browser and go to http://localhost:3000.
