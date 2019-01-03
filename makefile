#GENERAL
export PROJECT_NAME=blog

#PG_ADMIN
export POSTGRES_ADMIN_PORT=5050

#POSTGRES
export POSTGRES_VOLUME=./usr/lib/postgres
export POSTGRES_PUBLISHED_PORT=5432

#REDIS
export REDIS_PUBLISHED_PORT=6379

# Database
export DATABASE_USER=guest
export DATABASE_PASSWORD=guest
export DATABASE_NAME=symfony

DOCKER_COMPOSE_FILE?=./docker/docker-compose.yml
DOCKER_COMPOSE=docker-compose --file ${DOCKER_COMPOSE_FILE} --project-name=${PROJECT_NAME}

# Project containers
start: ## (Docker) Start containers (for this project only)
	@${DOCKER_COMPOSE} up -d

stop: ## (Docker) Stop containers (for this project only)
	@${DOCKER_COMPOSE} down

ps: ## (Docker) Show containers (for this project only)
	@${DOCKER_COMPOSE} ps

restart: stop start ## (Docker) Restart containers and deps(for this project only)

kill: ## (Docker) kill all containers
	docker kill $(docker ps -q)