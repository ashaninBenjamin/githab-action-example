# Steps

- install kubectl
- install helm
- add kube config (optional via KUBECONFIG)
- install cert manager `kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.7.1/cert-manager.yaml`, see https://cert-manager.io/docs/installation/kubectl/
- apply github actions `kubectl apply -f https://github.com/actions-runner-controller/actions-runner-controller/releases/download/v0.20.2/actions-runner-controller.yaml`
- upgrade with helm `helm upgrade --install --namespace actions-runner-system --create-namespace -f action-runner-controller-values.yml actions-runner-controller actions-runner-controller/actions-runner-controller`
- create a PAT on github: https://github.com/settings/tokens/new
  - set `repo (Full control)`
- create secret `kubectl create secret generic controller-manager -n actions-runner-system --from-literal=github_token=${GITHUB_TOKEN}`

