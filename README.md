# Inception

Docker infrastructure project that builds a small self-hosted WordPress stack from custom service images.

## What it builds

- Nginx reverse proxy with TLS entrypoint
- WordPress PHP service
- MariaDB database
- Persistent bind-mounted volumes
- Isolated Docker networks for web and database traffic

## Tech stack

- Docker
- Docker Compose
- Nginx
- WordPress / PHP
- MariaDB
- Shell scripting

## Repository structure

```text
Makefile
srcs/docker-compose.yml
srcs/requirements/
  mariadb/
  nginx/
  wordpress/
```

## Usage

Create the required `.env` file in `srcs/`, then run:

```bash
make up
```

Stop and remove containers:

```bash
make down
```

Full cleanup:

```bash
make extraclean
```

## Skills practiced

- Container orchestration
- Service isolation
- Persistent storage
- Custom Docker images
- Linux deployment fundamentals
