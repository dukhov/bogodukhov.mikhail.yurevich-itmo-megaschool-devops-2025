#!/bin/bash
kubectl exec -it $(kubectl get pods -n my-app -l app.kubenetes.io/name=mongodb -o jsonpath='{.items[0].metadata.name}') -n my-app -- mongosh --eval '
use auth; 
db.createCollection("users");
db.users.insertOne({"_id": ObjectId("000000000000000000000000"), "full_name": "Mikhail Bogodukhov", "username": "dukhov", "password": "password"});
'