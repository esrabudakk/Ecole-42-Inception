# Ecole-42-Inception
This project aims to broaden your knowledge of system administration by using Docker. I virtualized several Docker images, creating them in my new personal virtual machine.


## Docker:

Docker is a tool that helps developers package their applications and dependencies into small, portable volumes called containers that can be run consistently in different environments. This simplifies the process of creating, sending, and running applications, and allows for easy deployment and scaling.

### Docker-compose:

Docker Compose simplifies the process of deploying and scaling multi-container applications, making it easier to develop and manage complex applications.

### Docker Image:

Docker image is a standalone and executable package that contains everything needed to run the software, including code, dependencies, and configuration files. Docker images are portable and can be easily shared and distributed in different environments, such as development, testing, and production, without the need to manually install or configure the software.

### Docker Container:

A Docker container is an isolated run-time environment created from a Docker image. It contains a specific set of software components and configurations defined by Image and runs on top of the Docker Engine. Each container has its own file system, network and resources and can be managed and edited independently. Docker containers are portable and can be easily moved between different environments such as development, testing and production, providing a consistent and reliable application decoupling mechanism.

### Docker Volume:

Docker volume Docker containers by The container Store the data that needs to be shared between multiple survival in container or restart that is used to access and persistent data storage mechanism. Docker volume is created independently of containers, and one or more containers can be added during runtime.

```
db: 
driver: local 
name: db_volume 
driver_opts: 
type: none 
o: bind 
device: /home/ebudak/data/db 
 ```

### Docker Network:

A Docker network is a virtual network that allows Docker containers to communicate with each other and external networks using a common IP address space.

    * Bridge Network
    * Host Network
    * None Network
    * User-Defined Network

### Docker Service:

Docker service is a way to manage and scale many identical containers as a single volume. It allows you to define a desired state for your application, such as the number of replications, resources, and placement restrictions, and automatically deploys and manages containers to maintain this state.


## Files:

### Configuration Files:

It is a file containing the settings and parameters used to configure a software application or system. It usually stores options such as user preferences, system settings, security configurations, or network configurations.

`.conf` the file extension is widely used for configuration files in various software applications, including web servers, email servers, and other server applications.

`.cnf` the file extension is used for MySQL database configuration files.

### Dockerfile:

A Dockerfile is a text file that contains a set of instructions used to create Docker images. It involves installing and configuring the software required to run an application, as well as defining the commands that will be executed when the container is launched.

- `FROM` Dockerfile should start with the `FROM` directive. Specifies the parent image.

    ```
    FROM debian:10
    ````

- `RUN` This is the image creation step, after a `RUN' command, the container's status will be processed in the container image.

    ```
    RUN apt-get install -y mariadb-server
    ```
- `CMD`  This is the command that the container executes by default when you start the built image. A Dockerfile uses only the last defined `CMD`. `CMD` can be overridden when starting a container with `docker run $image$other_command'.

    ```
    CMD ["nginx", "-g", "daemon off;"]
    ```

- `ENTRYPOINT` It is used to set up executables only when the container is started. `ENTRYPOINT` commands cannot be overridden or ignored even if their arguments from command information are specified.
    ```
    ENTRYPOINT [ "var/www/nginx_start.sh" ]
    ```
- `EXPOSE` It indicates a specific port with a specific protocol inside a docker container, tells it to get all the information it needs during runtime through a specific port.

    ```
    EXPOSE 443
    ```
- `COPY` It is used to copy files and directories from your local machine into a Docker container.

    ```
    COPY ./tools/nginx_start.sh /var/www
    ```
### Docker-compose.yml:

Docker-compose.yml file is a configuration file used to define multiple Docker containers and their configurations in a single file.
