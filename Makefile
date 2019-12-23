init:
	docker-compose down ||:
	docker volume rm sample_data ||:
	docker-compose up