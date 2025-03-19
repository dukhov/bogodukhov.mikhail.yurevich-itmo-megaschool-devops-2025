helm repo add mongodb https://mongodb.github.io/helm-charts
helm repo update 
helm install mongodb mongodb/mongodb --namespace my-app --set image.tag=5.0.15 --set auth.enabled=false