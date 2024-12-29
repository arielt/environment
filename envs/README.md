# Environments

Set environment:
```shell
source set_env local/.env
```

Rebuild containers:
```shell
docker compose -f local/docker-compose.yml stop
docker compose -f local/docker-compose.yml rm -f

# keep volume to preserve DB data
# rm -rf local/volumes/db/data

docker compose -f local/docker-compose.yml pull
docker compose -f local/docker-compose.yml build
docker compose -f local/docker-compose.yml up --detach

# remove all unused containers and images
docker rm $(docker ps --filter status=exited -q)
docker rm $(docker ps --filter status=created -q)
docker image prune
```

Connect to the database:
```shell
./conn_db
```
