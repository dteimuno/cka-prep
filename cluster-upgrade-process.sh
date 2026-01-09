# How To Upgrade Cluster to Kubernetes 1.11 to I.12
#On master node
kubeadm upgrade plan  #This shows how an upgrade will happen
apt-get upgrade -y kubeadm=1.12
kubeadm upgrade apply #use this to upgrade the other cluster components
apt-get upgrade -y kubelet=1.12
systemctl restart kubelet


#On worker nodes
kubectl drain node <worker-node-name> #drain node
apt-get upgrade -y kubeadm=1.12 #upgrade kubeadm
apt-get upgrade -y kubelet=1.12 #upgrade kubelet
kubeadm upgrade node config --kubelet-version v 1.12.0 #upgrade node config
systemctl restart kubelet #restart kubelet

