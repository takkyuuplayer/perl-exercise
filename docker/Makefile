DOCKER=$(shell which docker)
DOCKER_COMPOSE=$(shell which docker-compose)
CONTAINER_NAME=perl-exercise

up:
	$(DOCKER_COMPOSE) -p $(CONTAINER_NAME) up -d

build:
	$(DOCKER_COMPOSE) build

clean: stop rm

attach:
	@$(DOCKER) exec -it $(CONTAINER_NAME) bash

stop:
	$(DOCKER_COMPOSE) -p $(CONTAINER_NAME) stop

rm:
	$(DOCKER_COMPOSE) -p $(CONTAINER_NAME) rm -f

perl:
	@$(DOCKER) exec -i $(CONTAINER_NAME) carton exec -- perl -Ilib $(SRC)
