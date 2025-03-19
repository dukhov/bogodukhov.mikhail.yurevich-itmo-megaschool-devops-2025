minikube start 
kubectl apply -n namespace.yaml
bash scripts/install_mongodb.sh
bash scripts/deploy.sh
bash scripts/init_mongodb.sh
kubectl get pods -n my-app