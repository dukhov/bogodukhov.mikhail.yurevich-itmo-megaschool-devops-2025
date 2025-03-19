minikube start 
kubectl apply -n namespace.yaml
bash ./install_mongodb.sh
bash ./deploy.sh
bash ./init_mongodb.sh
kubectl get pods -n my-app