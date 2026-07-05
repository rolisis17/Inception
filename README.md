# Inception

Inception is a Docker infrastructure project from the 42 curriculum. It builds a small self-hosted WordPress stack using custom service images, isolated networks, persistent volumes, and a single Compose entrypoint.

The project is about understanding how services fit together in production-like environments instead of relying on prebuilt black boxes.

## What it builds

- Nginx reverse proxy with TLS entrypoint
- WordPress/PHP application container
- MariaDB database container
- Persistent bind-mounted volumes
- Separate Docker networks for web and database traffic
- Custom Dockerfiles for each service

## Tech stack

- Docker
- Docker Compose
- Nginx
- WordPress / PHP
- MariaDB
- Shell scripting
- Make

## Repository structure

```text
Makefile
srcs/docker-compose.yml
srcs/requirements/
  mariadb/
    Dockerfile
    tools/script.sh
  nginx/
    Dockerfile
    conf/nginx.conf
  wordpress/
    Dockerfile
    tools/script.sh
```

## Setup

Create the required environment file in `srcs/.env` before starting the stack. The exact variables depend on your local evaluation setup, but the services expect database and WordPress credentials from that file.

The Makefile creates host data directories under:

```text
/home/dcella-d/data/mariadb
/home/dcella-d/data/wordpress
```

Adjust the Makefile and Compose volume paths if you run this on another machine.

## Run

```bash
make up
```

Stop and remove containers/images/volumes declared by the stack:

```bash
make down
```

Full cleanup:

```bash
make extraclean
```

## Technical highlights

- Builds each service from its own Dockerfile
- Uses Compose networks to separate database and web traffic
- Keeps persistent database and WordPress data outside the containers
- Automates common lifecycle actions through Make targets

## Skills demonstrated

- Container orchestration
- Linux service deployment
- Reverse proxy configuration
- Persistent storage design
- Infrastructure debugging
