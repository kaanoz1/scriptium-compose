PREPROD_FILES = -f compose.base.yaml -f compose.preproduction.yaml
PROD_FILES = -f compose.base.yaml -f compose.production.yaml
PREPROD_ENV = envs/.env.preproduction
PROD_ENV = envs/.env.production

build-pre:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) build

build-prod:
	docker compose $(PROD_FILES) --env-file $(PROD_ENV) build

build-backend-pre:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) build backend

build-backend-prod:
	docker compose $(PROD_FILES) --env-file $(PROD_ENV) build backend

build-frontend-pre:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) build frontend

build-frontend-prod:
	docker compose $(PROD_FILES) --env-file $(PROD_ENV) build frontend

up-pre:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) up -d --build

up-prod:
	docker compose $(PROD_FILES) --env-file $(PROD_ENV) up -d --build

up-db-pre:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) up -d db

up-db-prod:
	docker compose $(PROD_FILES) --env-file $(PROD_ENV) up -d db

up-backend-pre:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) up -d backend

up-backend-prod:
	docker compose $(PROD_FILES) --env-file $(PROD_ENV) up -d backend

up-frontend-pre:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) up -d frontend

up-frontend-prod:
	docker compose $(PROD_FILES) --env-file $(PROD_ENV) up -d frontend

up-ollama-pre:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) up -d ollama

up-ollama-prod:
	docker compose $(PROD_FILES) --env-file $(PROD_ENV) up -d ollama

down:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) down

down-v:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) down -v

clean:
	docker system prune -f
	docker image prune -f

logs:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) logs -f

logs-backend:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) logs -f backend

logs-frontend:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) logs -f frontend

logs-db:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) logs -f db

logs-ollama:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) logs -f ollama

ps:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) ps

restart-backend-pre:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) restart backend

restart-frontend-pre:
	docker compose $(PREPROD_FILES) --env-file $(PREPROD_ENV) restart frontend

reboot-pre: down up-pre
