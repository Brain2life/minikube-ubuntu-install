## Overview:
Bash script installs [`minikube`](https://minikube.sigs.k8s.io/docs/start/) and `kubectl` and required pre-requisite tools on Ubuntu system

## Commands:
1. To get info about the cluster use:
```shell
kubectl cluster-info
```
2. To view Minikube config use:
```shell
kubectl config view
```
3. To access minikube VM via ssh use:
```shell
minikube ssh
```
4. To enable minikube dashboard use:
```shell
minikube dashboard
```
5. To get the URL of the dashboard use:
```shell
minikube dashboard --url
```


## Reference:
1. [How to Compare Strings in Bash](https://linuxize.com/post/how-to-compare-strings-in-bash/)
2. [How to know if the running platform is Ubuntu or CentOS with help of a Bash script?](https://askubuntu.com/questions/459402/how-to-know-if-the-running-platform-is-ubuntu-or-centos-with-help-of-a-bash-scri)
3. [Install Minikube on Ubuntu 22.04|20.04|18.04](https://computingforgeeks.com/how-to-install-minikube-on-ubuntu-debian-linux/)
4. [Execute a shell script in current shell with sudo permission](https://stackoverflow.com/questions/18809614/execute-a-shell-script-in-current-shell-with-sudo-permission)
5. [test Command parameters](https://www.ibm.com/docs/en/aix/7.2?topic=t-test-command)
6. [How can I check if a program exists from a Bash script?](https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script)