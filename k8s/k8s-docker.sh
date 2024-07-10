# docker
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io docker-compose net-tools -y
sudo chmod 777 /var/run/docker.sock && sudo usermod -aG docker $USER
sudo usermod -aG docker ubuntu 
sudo systemctl restart docker
# k8s
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo mkdir /etc/apt/keyrings
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
sudo apt-get update

sudo apt-get install kubeadm kubelet kubectl -y
