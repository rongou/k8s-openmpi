# k8s-openmpi

OpenMPI test on Kubernetes.
* Build docker image with OpenMPI:
```bash
docker build -t rongou/openmpi .
```
* Push it to docker hub:
```bash
docker push rongou/openmpi
```
* Create k8s `Secret` containing ssh keys:
```bash
./create_secret.sh
```
* Launcher the workers:
```bash
kubectl create -f workers.yaml
```
* Get the IP addresses of the worker pods (wish there was a better way):
```bash
kubectl get pod --selector=app=openmpi-worker -o jsonpath='{.items[*].status.podIP}'
```
* Edit the `launcher.yaml` file with the IP addresses from the previous step.
* Run the launcher:
```bash
kubect create -f launcher.yaml
``` 