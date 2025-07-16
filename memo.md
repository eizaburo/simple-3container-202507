

docker build -t my-web:latest ./web
docker build -t my-api:latest ./api
docker build -t my-db:latest ./db


docker tag my-web:latest tamahub/my-web:latest
docker push tamahub/my-web:latest

docker tag my-api:latest tamahub/my-api:latest
docker push tamahub/my-api:latest

docker tag my-db:latest tamahub/my-db:latest
docker push tamahub/my-db:latest