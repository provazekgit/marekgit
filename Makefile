# Makefile pro práci s docker-compose

build:
	docker compose build

up:
	docker compose up --build

prod:
	docker compose run --rm linuxcli-prod

test:
	docker compose run --rm -it linuxcli-tests

down:
	docker compose down

logs:
	docker compose logs -f

clean:
	docker compose down --volumes --remove-orphans
