DOCKER_COMPOSE = docker-compose
DOCKER_COMPOSE_FILE = ./srcs/docker-compose.yml

prepare:
	echo '127.0.0.1 btwee.42.fr' >> /etc/hosts 
	echo '127.0.0.1 www.btwee.42.fr' >> /etc/hosts
	mkdir -p /home/btwee/data/wp
	mkdir -p /home/btwee/data/db
up:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up
down:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down
re:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up --build
stop:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop
ps:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) ps
clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q)

.PHONY: up down stop
