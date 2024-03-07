app_name = sample-app

build:
	docker-compose build --no-cache --force-rm
up:
	docker-compose up -d
stop:
	docker-compose down
restart:
	docker-compose restart

composer-update:
	docker exec $(app_name) bash -c "composer update"

# Migration
make-migration:
	docker exec $(app_name) php artisan make:migration $(c)
migrate:
	docker exec $(app_name) php artisan migrate
migrate-status:
	docker exec $(app_name) php artisan migrate:status
migrate-rollback:
	docker exec $(app_name) php artisan migrate:rollback
migrate-fresh:
	docker exec $(app_name) php artisan migrate:fresh


# Seed
seed:
	docker exec $(app_name) php artisan db:seed
seed-class:
	docker exec $(app_name) php artisan db:seed --class=$(c)
make-seeder:
	docker exec $(app_name) php artisan make:seeder $(c)


# controller
controller:
	docker exec $(app_name) php artisan make:controller $(c)

# help
help:
	docker exec $(app_name) php artisan 

# model
make-model:
	docker exec $(app_name) php artisan make:model $(c)

# factory
make-factory:
	docker exec $(app_name) php artisan make:factory $(c)