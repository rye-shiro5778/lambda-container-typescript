docker build -t lambda-ts-node .

docker run --name lambda-ts-node --rm -p 8080:8080 lambda-ts-node:latest

docker exec -it lambda-ts-node  sh 