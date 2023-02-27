all: data db wp up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d
data:
	mkdir /home/ebudak/data
db:
	mkdir /home/ebudak/data/db
wp:
	mkdir /home/ebudak/data/wp

down:
	docker-compose -f ./srcs/docker-compose.yml down

.PHONY: up data db wp down
