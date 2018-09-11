# Quantitative Proteo Transcriptomics Docker Demonstration


# Installation Guide
1.) Install Docker for  [Mac](https://docs.docker.com/docker-for-mac/install/) or [PC](https://docs.docker.com/docker-for-windows/install/). Open Docker.

2.) Open your terminal. Run the following command:
```sh
docker run -d -p 8080:80 galaxyp/quantp
```
The image will now download from the public repository [*galaxyp/quantp*](https://hub.docker.com/r/galaxyp/quantp/) on Docker Hub. This should take around 15 minutes to download.

> In the meanwhile, feel free to take some time to understand the different components of this Docker command.

| Component                         | Type         | Description                                                     |
| --------------------------------- | -----------  | --------------------------------------------------------------- |
| docker                            | Base command | The base command for the Docker CLI (Command Language Interface)|
| run                               | Command      | Run a command in a new container                                |
| -d, --detach                      | OPTION       | Run container in background and print container ID              |
| -p, --publish                     | OPTION       | Publish a container's port(s) to the host                       |
| galaxyp/quantp		 | IMAGE        | **galaxyp's** *quantp* image                 |
