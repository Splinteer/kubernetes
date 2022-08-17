# Install kubernetes UI
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.6.1/aio/deploy/recommended.yaml
kubectl apply -f ./dashboard/dashboard-service-account.yml
kubectl apply -f ./dashboard/dashboard-cluster-role-binding.yml
kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user-token | awk '{print $1}')
