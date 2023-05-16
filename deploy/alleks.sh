
## This script will setup kubernetes for future use

#kubectl delete namespace helloworld
#kubectl delete service helloworld-app-deployment
#kubectl delete deploy helloworld-app-deployment
kubectl get all
kubectl create namespace helloworld
./deployment.sh
./service.sh
kubectl get all
kubectl get all -n helloworld
kubectl -n helloworld describe service helloworld-app-deployment
##kubectl exec -it helloworld-app-deployment-568dcfcdfb-j4ld2 -n helloworld -- /bin/bash