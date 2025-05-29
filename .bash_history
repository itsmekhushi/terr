sudo systemctl restart ssh
ls -ld /home/ubuntu/jenkins
mkdir -p /home/ubuntu/jenkins
ls -ld /home/ubuntu/jenkins
~/.ssh/jenkins-agent
cat ~/.ssh/jenkins-agent
ls ~/.ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/jenkins-agent
ls -l ~/.ssh/jenkins-agent*
cat ~/.ssh/jenkins-agent
ssh-copy-id -i ~/.ssh/jenkins-agent.pub ubuntu@15.207.98.142
sudo ssh-copy-id -i ~/.ssh/jenkins-agent.pub ubuntu@15.207.98.142
cat ~/.ssh/authorized_keys
sudo su - jenkins
sudo  jenkins
ps -ef | grep jenkins
mkdir -p /home/ubuntu/.ssh
chmod 700 /home/ubuntu/.ssh
ssh-keyscan -H 15.207.98.142 >> /home/ubuntu/.ssh/known_hosts
chmod 644 /home/ubuntu/.ssh/known_hosts
sudo useradd -m -d /var/lib/jenkins -s /bin/bash jenkins
sudo mkdir -p /var/lib/jenkins/.ssh
sudo ssh-keyscan -H 15.207.98.142 | sudo tee -a /var/lib/jenkins/.ssh/known_hosts
sudo chown -R jenkins:jenkins /var/lib/jenkins/.ssh
sudo chmod 700 /var/lib/jenkins/.ssh
sudo chmod 644 /var/lib/jenkins/.ssh/known_hosts
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo apt update
sudo apt install openjdk-11-jdk -y
vi main.tf
curl -sO http://13.233.82.98:8080/jnlpJars/agent.jar
java -jar agent.jar -url http://13.233.82.98:8080/ -secret acd89f1d626219db597ad71e5523b2b119d225f76092fce1a33a75487d64d4d7 -name node1 -webSocket -workDir "/home/ubuntu"
sudo apt-get update
sudo apt-get install -y wget unzip
wget https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip
unzip terraform_1.5.7_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform -version
sudo apt-get install awscli -y
aws --version
sudo apt-get install awscli -y
aws --version
curl -sO http://13.233.82.98:8080/jnlpJars/agent.jar
java -jar agent.jar -url http://13.233.82.98:8080/ -secret acd89f1d626219db597ad71e5523b2b119d225f76092fce1a33a75487d64d4d7 -name node1 -webSocket -workDir "/home/ubuntu"
