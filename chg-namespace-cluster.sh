#Install kubectx for easily changing k8s clusters
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx

#Install kubens for easily changing namespaces when in a cluster. Use this command after installing kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

kubectx #List clusters
kubectx <NAME> #change kubernetes context easily to another
kubectx - #change k8s context to previous context

kubens #list k8s namespaces
kubens <NAME> #easily change k8s namespace
kubens - #change k8s namespace to previous namespace




