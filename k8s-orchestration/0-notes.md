Tools Installation Installing 

1. Kubectl
2. Kubernetes: It is not a regular software you would normally install on a computer. It is a solution that works as a cluster that fulfils container orchestration requirements. Ideally you would install different components across multiple servers to form a kubernetes cluster.
   1. kind
   2. minikube
3. kind commands
   - kind create cluster --config /Users/dare/Desktop/darey.io/foundation/Orchestration/kind.yaml
4. Authenticating to the cluster through kubeconfig
   -  cat ~/.kube/config
5. Common commands to interact with the cluster
   -  kubectl cluster-info --context kind-website-cluster
   -  kubectl get nodes
   -  kubectl get pods -o wide
   -  kubectl describe pod nginx-pod
   -  kubectl logs nginx-pod
   -  kubectl port-forward pod/nginx-deployment-85874d96dd-5t4hb 3000:80
6. Kubernetes Resources
   - Pods:  the smallest and simplest unit in the Kubernetes object model that you can create or deploy.
  
       - Container Grouping
       - Shared Network
       - Shared Storage
       - Lifecycle Management

   - Replication Controllers: ensures a specified number of pod replicas are running at any given time
     - Selector
     - Replicas
     - Pod Template

   - Replication Sets: ensures a specified number of pod replicas are running at any given time
     - Selector
     - Replicas
     - Pod Template
  
            Selector Capabilities in Replica Set: ReplicaSets support set-based and equality-based label selectors, allowing for more complex selection criteria.

   - Deployments: a higher-level resource that provides declarative updates for Pods and ReplicaSets. It allows you to define the desired state for your application, including the number of replicas, the container image, and other configurations


   - Services: A Service in Kubernetes is a way to group a set of Pods and provide a stable way to access them. It gives a fixed IP address and DNS name, making it easy for different parts of an application to communicate with each other, even if the Pods change

