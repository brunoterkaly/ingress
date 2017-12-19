
echo "Create the secret"

kubectl create secret tls web-secret --key=tls.key --cert=tls.crt

echo "Create nginx replicationcontroller"
kubectl create -f nginx-ingress-rc.yaml

echo "Create web and db replicationcontroller"
kubectl create -f mysql-rc.yaml
kubectl create -f mysql-svc.yaml
kubectl create -f web-frontend-rc.yaml
kubectl create -f web-frontend-svc.yaml

echo "Create ingress controller (path for web app endpoints)"
kubectl create -f web-ingress.yaml

echo "Expose a LoadBalancer to the nginx replicationcontroller"
kubectl expose rc nginx-ingress-rc --port="80,443" --type="LoadBalancer"

kubectl get pods -o wide
kubectl get pods,svc,rc,ingress
