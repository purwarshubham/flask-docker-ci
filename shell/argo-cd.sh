# file: restart-argo-cd.sh

# Part 2

# Install ArgoCD (in Minikube)

minikube start --memory=4096 --cpus=2

kubectl delete namespace argocd
kubectl create namespace argocd

# Below command may take time - try 5-10 times
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.11.3/manifests/install.yaml

# check the status of the pods using below command
kubectl get pods -n argocd


# Expose ArgoCD UI (for browser access)
kubectl port-forward svc/argocd-server -n argocd 8080:443

# Get Admin Password
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d && echo

# Login to ArgoCD Application (via CLI)
argocd login localhost:8080 --username admin --password password_value --skip-test-tls --insecure

# Create Application
argocd app create flask-app \
  --repo https://github.com/purwarshubham/flask-docker-ci.git  \
  --path k8s \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace default

# Sync your app
argocd app sync flask-app

minikube service flask-service
