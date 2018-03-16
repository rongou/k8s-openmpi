# k8s-openmpi

OpenMPI test on Kubernetes.
* Build and push worker docker image:
```bash
docker build -t rongou/openmpi-worker -f Dockerfile.worker .
docker push rongou/openmpi-worker
```
* Build and push launcher docker image:
```bash
docker build -t rongou/openmpi-launcher -f Dockerfile.launcher .
docker push rongou/openmpi-launcher
```
* Run the test:
```bash
kubect create -f openmpi-test.yaml
```

This starts a `StatefulSet` of 4 workers, and a batch `Job` as the launcher.
Logs can be accessed through the launcher pod.
