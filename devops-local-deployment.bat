kubectl delete -f ./cluster/gateway-local-owlvey.yaml  
TIMEOUT 5
kubectl apply -f ./cluster/gateway-local-owlvey.yaml --validate=false  

kubectl get ing -n owlvey

kubectl describe ing owlvey-ingress-api -n owlvey

REM kubectl get pods -n ingress-nginx

REM kubectl logs ingress-nginx-controller-5cc4589cc8-hvp7r -n ingress-nginx

REM kubectl delete pod ingress-nginx-controller-5cc4589cc8-zl7ln -n ingress-nginx

REM kubectl port-forward owlvey-backend-local-deployment-7676b54fd5-phb8w  48102:48100  -n owlvey

 kubectl get pods -n owlvey
 kubectl port-forward owlvey-site-local-deployment-5445f945cc-wv7cl  48102:80  -n owlvey

kubectl describe pod -l app.kubernetes.io/component=controller -n ingress-nginx
kubectl logs -l app.kubernetes.io/component=controller -n ingress-nginx

REM kubectl get pod -o wide -n owlvey

#dns 

REM kubectl get pods --namespace=kube-system -o wide

REM cat /etc/resolv.conf

REM kubectl exec -it owlvey-site-pod -n owlvey -- sh

REM kubectl get svc --namespace=kube-system


rem kubectl get pods --namespace=kube-system -l k8s-app=kube-dns -o name

rem kubectl logs --namespace=kube-system coredns-5644d7b6d9-fpp79

rem kubectl get pods --namespace=kube-system

rem kubectl port-forward coredns-5644d7b6d9-fpp79 53:53 --namespace=kube-system

rem kubectl -n default exec -ti busybox nslookup kubernetes.default 10.1.2.4


rem kubectl run -i --tty busybox --image=busybox --restart=Never -- sh 

rem kubectl run -it ubuntu --image=ubuntu --restart=Never -n demo -- /bin/bash 


rem kubectl delete pod ingress-nginx-controller-5cc4589cc8-wdct4 -n ingress-nginx