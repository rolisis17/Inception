DOCKERFILE = srcs/docker-compose.yml
CMD = docker compose -f $(DOCKERFILE)

build:
	@if [ ! -d  "/home/dcella-d/data" ]; then \
		sudo mkdir /home/dcella-d/data /home/dcella-d/data/wordpress /home/dcella-d/data/mariadb; \
	fi
	$(CMD) build

up: build
	$(CMD) up -d

down:
	$(CMD) down --volume --rmi all

prune: down
	docker system prune -f

clean:
	@if [ -d  "/home/dcella-d/data" ]; then \
		sudo rm -rf /home/dcella-d/data; \
	fi

extraclean: down prune clean