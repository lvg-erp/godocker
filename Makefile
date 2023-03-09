postgresinit:
	docker run --name postgres15 -p 5433:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=root -d postgres:15-alpine

postgres:
	docker exec -it postgres15 psql

createdb:
	docker exec -it postgres15 createdb --username=root --owner=root godocker

dropdb:
	docker exec -it postgres15 dropdb godocker

migrateup:
	migrate -path server/db/migrations -database "postgresql://root:root@localhost:5433/godocker?sslmode=disable" -verbose up

migratedown:
	migrate -path server/db/migrations -database "postgresql://root:root@localhost:5433/godocker?sslmode=disable" -verbose down

.PHONY: postgresinit
