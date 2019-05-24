DC  = sudo docker-compose

# make build
build:
	@$(DC) build

# make run
run:
	@$(DC) up

# make bash
bash:
	@$(DC) run --rm -p 80:3000 app bash

chown:
	sudo chown -R ${USER}:${USER} .

deploy:
	git push heroku `git rev-parse --abbrev-ref HEAD`:master
