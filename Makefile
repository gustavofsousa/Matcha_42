file = docker compose -f ./docker-compose.yml

all: up-build

matcha: up-build

up-build:
	@${file} up --build

up:
	@$(file) up -d

down:
	@$(file) down

re:	fclean up-build

clean:	down
	docker container prune -f
	docker network prune -f
	docker volume prune -f

fclean: clean
	docker volume rm -f matcha_db 42_matcha_matcha_db

certificate:
	bash ./nginx/generate-certificate.sh

.PHONY: all ssl up-build up down clean fclean re
