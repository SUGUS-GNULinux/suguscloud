run:
# 	source .env
	sed -i.bak 's/EENV LC_CTYPE en_US\.UTF-8/ENV LC_CTYPE es_ES\.UTF-8/g' CODE/Dockerfile
	git submodule update --recursive --remote
	docker-compose up -d



