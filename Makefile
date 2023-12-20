DOCKERFILE = srcs/docker-compose.yml
CMD = docker compose -f $(DOCKERFILE)

build:
if [ ! -d  /home/dcella-d]
	$(CMD) build

up: build
	$(CMD) up

down:
	$(CMD) down --volume --rmi all

prune: down
	docker system prune -f

clean:
	