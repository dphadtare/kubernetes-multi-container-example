docker build -t dphadatare/multi-client:latest -t dphadatare/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t dphadatare/multi-server:latest -t dphadatare/multi-server:$SHA -f ./client/Dockerfile ./server
docker build -t dphadatare/multi-worker:latest -t dphadatare/multi-worker:$SHA -f ./client/Dockerfile ./worker
docker push dphadatare/multi-client:latest
docker push dphadatare/multi-server:latest
docker push dphadatare/multi-worker:latest

docker push dphadatare/multi-client:$SHA
docker push dphadatare/multi-server:$SHA
docker push dphadatare/multi-worker:$SHA

kubectl apply -f k8s
# imperatively set latest image on each deployment
kubectl set image deployments/client-deployment server=dphadatare/multi-client:$SHA
kubectl set image deployments/server-deployment server=dphadatare/multi-server:$SHA
kubectl set image deployments/worker-deployment server=dphadatare/multi-worker:$SHA