kubectl delete -f ./cluster/gateway-local-owlvey.yaml  
TIMEOUT 5
kubectl apply -f ./cluster/gateway-local-owlvey.yaml --validate=false  

